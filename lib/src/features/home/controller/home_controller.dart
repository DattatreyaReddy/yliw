// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'dart:collection';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/box.dart';
import '../repository/day_box_repository.dart';
import '../repository/week_box_repository.dart';
import '../repository/year_box_repository.dart';

part 'home_controller.g.dart';

@riverpod
Stream<LinkedHashMap<int, List<DayBox>>?> dayBoxMap(Ref ref) =>
    ref.watch(dayBoxRepositoryProvider).getDayBoxListGroupByWeekNumber();

@riverpod
Stream<DayBox?> dayBox(Ref ref, int boxNumber) =>
    ref.watch(dayBoxRepositoryProvider).watchById(boxNumber);

@riverpod
Stream<WeekBox?> weekBox(Ref ref, int boxNumber) =>
    ref.watch(weekBoxRepositoryProvider).watchById(boxNumber);

@riverpod
Stream<YearBox?> yearBox(Ref ref, int boxNumber) =>
    ref.watch(yearBoxRepositoryProvider).watchById(boxNumber);
@riverpod
Stream<LinkedHashMap<int, List<WeekBox>>?> weekBoxMap(Ref ref) =>
    ref.watch(weekBoxRepositoryProvider).getWeekBoxListGroupByYearNumber();

@riverpod
Stream<LinkedHashMap<int, List<YearBox>>?> yearBoxMap(Ref ref) =>
    ref.watch(yearBoxRepositoryProvider).getYearBoxListGroupByDecadeNumber();
