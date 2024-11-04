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

part 'year_box_repository.g.dart';

class YearBoxRepository {
  final Database _db;
  late final StoreRef<int, JsonObject> _store;

  YearBoxRepository(this._db) {
    _store = StoreRef("YearBox");
  }
  Stream<List<YearBox>?> getYearBoxList() {
    return _store
        .query()
        .onSnapshots(_db)
        .map(AppUtils.convertSnaps(YearBox.fromJson));
  }

  Stream<LinkedHashMap<int, List<YearBox>>?>
      getYearBoxListGroupByDecadeNumber() => _store
          .query()
          .onSnapshots(_db)
          .map(AppUtils.convertSnaps(YearBox.fromJson))
          .map((snaps) => snaps.groupBy((snap) => snap.boxNumber ~/ 10));

  Stream<YearBox?> getYearBoxByYearNumber(int yearNumber) => _store
      .record(yearNumber)
      .onSnapshot(_db)
      .map(AppUtils.convertSnap(YearBox.fromJson));

  Future<List<int>> saveAll(List<YearBox> years, {DatabaseClient? db}) =>
      _store.addAllWithKey(_db, years, (year) => year.boxNumber);

  Future<void> save(YearBox year) =>
      _store.record(year.boxNumber).update(_db, year.toJson());

  Future<List<int>> saveInTransaction(
          DatabaseClient transaction, List<YearBox> years) =>
      _store.addAllWithKeyAndTransaction(
          transaction, years, (year) => year.boxNumber);
}

@riverpod
YearBoxRepository yearBoxRepository(Ref ref) =>
    YearBoxRepository(ref.watch(dbProvider));
