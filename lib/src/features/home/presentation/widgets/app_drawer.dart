// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/constants/constants.dart';
import '../../../../common/constants/gen/assets.gen.dart';
import '../../../../common/utils/app_utils.dart';
import '../../../../common/utils/extensions/custom_extensions.dart';
import '../../../../common/utils/toast/toast.dart';
import '../../../../router/router_config.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Center(
              child: Assets.images.yliwNoBg.image(width: 100, height: 100),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: Icon(Icons.calendar_month_rounded),
                  title: Text(context.l10n.year),
                  style: ListTileStyle.drawer,
                  selected: context.location.contains(HomeYearRoute().location),
                  onTap: () => HomeYearRoute().go(context),
                ),
                ListTile(
                  leading: Icon(Icons.calendar_view_week_rounded),
                  title: Text(context.l10n.week),
                  style: ListTileStyle.drawer,
                  selected: context.location.contains(HomeWeekRoute().location),
                  onTap: () => HomeWeekRoute().go(context),
                ),
                ListTile(
                  leading: Icon(Icons.calendar_view_day),
                  title: Text(context.l10n.day),
                  style: ListTileStyle.drawer,
                  selected: context.location.contains(HomeDayRoute().location),
                  onTap: () => HomeDayRoute().go(context),
                ),
              ],
            ),
          ),
          AppCredits(),
        ],
      ),
    );
  }
}

class AppCredits extends ConsumerWidget {
  const AppCredits({
    super.key,
  });

  @override
  Widget build(context, ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text(context.l10n.yliwPost),
          trailing: Icon(Icons.open_in_new),
          dense: true,
          onTap: () => AppUtils.launchUrlInWeb(
              context, Constants.waitButWhyPostUrl, ref.read(toastProvider)),
        ),
        InkWell(
          onTap: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Row(
                children: [
                  Text(
                    context.l10n.appCredits,
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.close),
                  )
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.github),
                    title: Text(context.l10n.gitHub),
                    onTap: () => AppUtils.launchUrlInWeb(
                        context, Constants.githubUrl, ref.read(toastProvider)),
                  ),
                  Text("Based On"),
                  ListTile(
                    leading:
                        Assets.images.waitButWhy.image(height: 24, width: 24),
                    title: Text(
                      "Your Life in Weeks post by Tim Urban",
                    ),
                    subtitle: Text("from Wait But Why."),
                    onTap: () => AppUtils.launchUrlInWeb(context,
                        Constants.waitButWhyPostUrl, ref.read(toastProvider)),
                  ),
                ],
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Made With "),
                Icon(Icons.favorite_rounded, color: Colors.red),
                Text(" By "),
                GestureDetector(
                  onTap: () => AppUtils.launchUrlInWeb(context,
                      Constants.padyaGithubUrl, ref.read(toastProvider)),
                  child: Text(
                    "Padya",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
