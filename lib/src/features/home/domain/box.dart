// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/converter/epoch_date_time_converter.dart';
import '../../../common/utils/extensions/custom_extensions.dart';
import '../../../common/utils/json_abstract.dart';
import '../enums/box_status.dart';

part 'box.freezed.dart';
part 'box.g.dart';

enum DayBoxFields {
  dayNumber,
  date,
  boxStatus,
  weekNumber,
  yearNumber,
  hasLandMark,
}

enum WeekBoxFields {
  weekNumber,
  startDate,
  endDate,
  boxStatus,
  yearNumber,
  hasLandMark,
}

enum YearBoxFields {
  yearNumber,
  startDate,
  endDate,
  boxStatus,
  hasLandMark,
}

sealed class Box {
  int get boxNumber;
  BoxStatus get boxStatus;
  bool get hasLandMark;
  String get chatGroupId;

  String toSectionTitle(BuildContext context, int number);
}

@freezed
class DayBox with _$DayBox implements JsonAbstract, Box {
  const DayBox._();
  factory DayBox({
    required int boxNumber,
    @EpochDateTimeConverter() required DateTime date,
    required BoxStatus boxStatus,
    required int weekNumber,
    required int yearNumber,
    @Default(false) bool hasLandMark,
  }) = _DayBox;

  factory DayBox.fromJson(Map<String, dynamic> json) => _$DayBoxFromJson(json);

  @override
  String toSectionTitle(BuildContext context, int number) =>
      context.l10n.daySection((number + 1).formatNumber()!);

  /// For Chat group name
  @override
  String get chatGroupId => "DAY_$boxNumber";
}

@freezed
class WeekBox with _$WeekBox implements JsonAbstract, Box {
  const WeekBox._();
  factory WeekBox({
    required int boxNumber,
    @EpochDateTimeConverter() required DateTime startDate,
    @EpochDateTimeConverter() required DateTime endDate,
    required BoxStatus boxStatus,
    required int yearNumber,
    @Default(false) bool hasLandMark,
  }) = _WeekBox;

  factory WeekBox.fromJson(Map<String, dynamic> json) =>
      _$WeekBoxFromJson(json);
  @override
  String toSectionTitle(BuildContext context, int number) =>
      context.l10n.weekSection((number + 1).formatNumber()!);

  /// For Chat group name
  @override
  String get chatGroupId => "WEEK_$boxNumber";
}

@freezed
class YearBox with _$YearBox implements JsonAbstract, Box {
  const YearBox._();

  factory YearBox({
    required int boxNumber,
    @EpochDateTimeConverter() required DateTime startDate,
    @EpochDateTimeConverter() required DateTime endDate,
    required BoxStatus boxStatus,
    @Default(false) bool hasLandMark,
  }) = _YearBox;

  factory YearBox.fromJson(Map<String, dynamic> json) =>
      _$YearBoxFromJson(json);
  @override
  String toSectionTitle(BuildContext context, int number) =>
      context.l10n.yearSection((number + 1).formatNumber()!);

  /// For Chat group name
  @override
  String get chatGroupId => "YEAR_$boxNumber";
}
