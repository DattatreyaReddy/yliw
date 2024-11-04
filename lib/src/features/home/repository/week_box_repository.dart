// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'dart:collection';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast.dart';

import '../../../common/controller/global_controller.dart';
import '../../../common/utils/app_utils.dart';
import '../../../common/utils/custom_types.dart';
import '../../../common/utils/extensions/custom_extensions.dart';
import '../../../common/utils/extensions/custom_extensions/store_ref_extensions.dart';
import '../domain/box.dart';

part 'week_box_repository.g.dart';

class WeekBoxRepository {
  final Database _db;
  late final StoreRef<int, JsonObject> _store;

  WeekBoxRepository(this._db) {
    _store = StoreRef("WeekBox");
  }
  Stream<List<WeekBox>?> getWeekBoxList() => _store
      .query()
      .onSnapshots(_db)
      .map(AppUtils.convertSnaps(WeekBox.fromJson));

  Stream<WeekBox?> getWeekBoxByWeekNumber(int weekNumber) => _store
      .record(weekNumber)
      .onSnapshot(_db)
      .map(AppUtils.convertSnap(WeekBox.fromJson));

  Stream<LinkedHashMap<int, List<WeekBox>>?>
      getWeekBoxListGroupByYearNumber() => _store
          .query()
          .onSnapshots(_db)
          .map(AppUtils.convertSnaps(WeekBox.fromJson))
          .map((snaps) => snaps.groupBy((snap) => snap.yearNumber));

  Stream<List<WeekBox>?> getWeekBoxListByYearNumber(int yearNumber) => _store
      .query(
        finder: Finder(
          filter: Filter.equals(WeekBoxFields.yearNumber.name, yearNumber),
        ),
      )
      .onSnapshots(_db)
      .map(AppUtils.convertSnaps(WeekBox.fromJson));

  Future<void> saveAll(List<WeekBox> weeks) =>
      _store.addAllWithKey(_db, weeks, (week) => week.boxNumber);

  Future<void> save(WeekBox week) =>
      _store.record(week.boxNumber).update(_db, week.toJson());

  Future<List<int>> saveInTransaction(
          DatabaseClient transaction, List<WeekBox> weeks) =>
      _store.addAllWithKeyAndTransaction(
          transaction, weeks, (week) => week.boxNumber);
}

@riverpod
WeekBoxRepository weekBoxRepository(Ref ref) =>
    WeekBoxRepository(ref.watch(dbProvider));
