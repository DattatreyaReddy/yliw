// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sembast/sembast.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/constants.dart';
import 'custom_types.dart';
import 'extensions/custom_extensions.dart';
import 'toast/toast.dart';

abstract class AppUtils {
  static Widget wrapOn(Widget Function(Widget)? wrapper, Widget child) {
    if (wrapper != null) {
      return wrapper(child);
    }
    return child;
  }

  static Widget wrapChildIf({
    bool? condition,
    Widget Function(Widget)? wrap,
    Widget Function(Widget)? elseWrap,
    required Widget child,
  }) {
    if (wrap != null && condition.ifNull()) {
      return wrap(child);
    }
    return elseWrap?.call(child) ?? child;
  }

  static T? wrapIf<T, U>({
    bool? condition,
    required U? child,
    T? Function(U?)? wrap,
  }) {
    if (wrap != null && condition.ifNull()) {
      return wrap(child);
    }
    return null;
  }

  static T? returnIf<T>(
    bool? condition,
    T? value, [
    T? elseValue,
  ]) {
    if (condition.ifNull()) {
      return value;
    }
    return elseValue;
  }

  static Future<T?> guard<T>(
    Future<T> Function() future,
    Toast? toast, [
    bool Function(Object)? test,
  ]) async =>
      (await AsyncValue.guard(future, test)).valueOrToast(toast);

// List<RecordSnapshot<int, Map<String, Object?>>
  static E? Function(RecordSnapshot<T, Map<String, Object?>>?)
      convertSnap<T, E>(E Function(JsonObject) constructor) =>
          (RecordSnapshot<T, Map<String, Object?>>? event) {
            if (event == null) return null;
            return constructor(event.value);
          };
  static E Function(RecordSnapshot<T, Map<String, Object?>>)
      convertSnapNonNull<T, E>(E Function(JsonObject) constructor) =>
          (RecordSnapshot<T, Map<String, Object?>> event) =>
              constructor(event.value);

  static List<E> Function(List<RecordSnapshot<T, Map<String, Object?>>>)
      convertSnaps<T, E>(E Function(JsonObject) constructor) =>
          (List<RecordSnapshot<T, Map<String, Object?>>> event) =>
              event.map(convertSnapNonNull(constructor)).toList();

  static T? Function(JsonObject? value) convertGet<T>(
          T Function(JsonObject) fromJson) =>
      (value) => value != null ? fromJson(value) : null;

  static int currentDay(AsyncValue<DateTime?> dob) {
    if (dob.valueOrNull == null) return 0;
    return DateTime.now().difference(dob.valueOrNull!).inDays;
  }

  static int currentWeek(AsyncValue<DateTime?> dob) {
    if (dob.valueOrNull == null) return 0;
    return DateTime.now().difference(dob.valueOrNull!).inDays ~/
        Constants.daysInWeek;
  }

  static int currentYear(AsyncValue<DateTime?> dob) {
    if (dob.valueOrNull == null) return 0;
    return DateTime.now().difference(dob.valueOrNull!).inDays ~/
        (Constants.weeksInYear * Constants.daysInWeek);
  }

  static ValueGetter<int> getItemVisibleListener(
    ValueListenable<Iterable<ItemPosition>> visibleItemsListenable,
    int current,
  ) =>
      () {
        final visibleItems = visibleItemsListenable.value;
        if (visibleItems.isEmpty) return 0;
        int maxIndex = 0;
        int minIndex = 50000;
        for (var item in visibleItems) {
          if (item.index == current) return 0;
          minIndex = min(item.index, minIndex);
          maxIndex = max(item.index, maxIndex);
        }
        if (minIndex > current) {
          return 1;
        } else if (maxIndex < current) {
          return -1;
        }
        return 0;
      };

  static String formatDates(DateTime d1, DateTime d2) {
    StringBuffer stringBuffer = StringBuffer();
    if (d1.year == d2.year) {
      if (d1.month == d2.month) {
        stringBuffer.write(d1.day);
      } else {
        stringBuffer.write(d1.toDayMonthString);
      }
    } else {
      stringBuffer.write(d1.toDateString);
    }
    stringBuffer.write(" - ");
    stringBuffer.write(d2.toDateString);
    return stringBuffer.toString();
  }

  static Future<void> launchUrlInWeb(BuildContext context, String url,
      [Toast? toast]) async {
    if (!await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
      webOnlyWindowName: "_blank",
    )) {
      await Clipboard.setData(ClipboardData(text: url));
      if (context.mounted) toast?.showError(context.l10n.errorLaunchUrl(url));
    }
  }

  static (String message, String? url) getEmptyMessages(BuildContext context) =>
      {
        (context.l10n.startMsgTip, null),
        (context.l10n.highlightTip, null),
        (context.l10n.checkOutYliWPost, Constants.waitButWhyPostUrl),
      }.getRandom!;

  static void appUpdateDialog({
    required String title,
    required String newRelease,
    required BuildContext context,
    required Toast? toast,
    String? url,
  }) =>
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(context.l10n.newUpdateAvailable),
            content: Text(context.l10n.versionAvailable(title, newRelease)),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(context.l10n.close),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  launchUrlInWeb(
                      context, url ?? Constants.githubLatestReleaseUrl, toast);
                  Navigator.pop(context);
                },
                icon: Icon(FontAwesomeIcons.github),
                label: Text(context.l10n.gitHub),
              ),
            ],
          );
        },
      );

  static Future<AsyncValue<Version?>> checkUpdate(
      PackageInfo packageInfo) async {
    final gitResponse = await AsyncValue.guard<Map<String, dynamic>?>(
        () async => json.decode((await http.get(
              Uri.parse(Constants.latestReleaseApiUrl),
            ))
                .body));

    return gitResponse.copyWithData<Version?>(
      (data) {
        String? tag = data?["tag_name"];
        Version? latestReleaseBuildNumber =
            tag != null ? Version.parse(tag) : null;
        Version? packageBuildNumber = Version.parse(packageInfo.version);
        if (latestReleaseBuildNumber != null &&
            latestReleaseBuildNumber
                .compareTo(packageBuildNumber)
                .isGreaterThan(0)) {
          return latestReleaseBuildNumber;
        }
        return null;
      },
    );
  }
}
