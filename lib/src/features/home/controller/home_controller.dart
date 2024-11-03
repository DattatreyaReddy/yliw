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
    ref.watch(dayBoxRepositoryProvider).getDayBoxByNumber(boxNumber);

@riverpod
Stream<WeekBox?> weekBox(Ref ref, int boxNumber) =>
    ref.watch(weekBoxRepositoryProvider).getWeekBoxByWeekNumber(boxNumber);

@riverpod
Stream<YearBox?> yearBox(Ref ref, int boxNumber) =>
    ref.watch(yearBoxRepositoryProvider).getYearBoxByYearNumber(boxNumber);
@riverpod
Stream<LinkedHashMap<int, List<WeekBox>>?> weekBoxMap(Ref ref) =>
    ref.watch(weekBoxRepositoryProvider).getWeekBoxListGroupByYearNumber();

@riverpod
Stream<LinkedHashMap<int, List<YearBox>>?> yearBoxMap(Ref ref) =>
    ref.watch(yearBoxRepositoryProvider).getYearBoxListGroupByDecadeNumber();
