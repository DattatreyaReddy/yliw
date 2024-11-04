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

part 'day_box_repository.g.dart';

class DayBoxRepository {
  final Database _db;
  late final StoreRef<int, JsonObject> _store;

  DayBoxRepository(this._db) {
    _store = StoreRef("DayBox");
  }

  Stream<DayBox?> getDayBoxByNumber(int dayNumber) => _store
      .record(dayNumber)
      .onSnapshot(_db)
      .map(AppUtils.convertSnap(DayBox.fromJson));

  Stream<List<DayBox>?> getDayBoxList() => _store
      .query()
      .onSnapshots(_db)
      .map(AppUtils.convertSnaps(DayBox.fromJson));

  Stream<LinkedHashMap<int, List<DayBox>>?> getDayBoxListGroupByWeekNumber() =>
      _store
          .query()
          .onSnapshots(_db)
          .map(AppUtils.convertSnaps(DayBox.fromJson))
          .map((snaps) => snaps.groupBy((snap) => snap.weekNumber));

  Stream<List<DayBox>?> getDayBoxListByWeekNumber(int weekNumber) => _store
      .query(
        finder: Finder(
          filter: Filter.equals(DayBoxFields.weekNumber.name, weekNumber),
        ),
      )
      .onSnapshots(_db)
      .map(AppUtils.convertSnaps(DayBox.fromJson));

  Future<List<int>> saveAll(List<DayBox> days) =>
      _store.addAllWithKey(_db, days, (day) => day.boxNumber);

  Future<void> save(DayBox day) =>
      _store.record(day.boxNumber).update(_db, day.toJson());

  Future<List<int>> saveInTransaction(
          DatabaseClient transaction, List<DayBox> days) =>
      _store.addAllWithKeyAndTransaction(
          transaction, days, (day) => day.boxNumber);
}

@riverpod
DayBoxRepository dayBoxRepository(Ref ref) =>
    DayBoxRepository(ref.watch(dbProvider));
