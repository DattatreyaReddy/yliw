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
import '../../../common/utils/extensions/custom_extensions.dart';
import '../../../common/utils/repository/generic_repository.dart';
import '../domain/box.dart';

part 'week_box_repository.g.dart';

class WeekBoxRepository extends GenericRepository<int, WeekBox> {
  WeekBoxRepository(Database db) : super(db, "WeekBox", WeekBox.fromJson);

  Stream<LinkedHashMap<int, List<WeekBox>>?>
      getWeekBoxListGroupByYearNumber() => store
          .query()
          .onSnapshots(database)
          .map(AppUtils.convertSnaps(WeekBox.fromJson))
          .map((snaps) => snaps.groupBy((snap) => snap.yearNumber));

  Stream<List<WeekBox>?> getWeekBoxListByYearNumber(int yearNumber) => store
      .query(
        finder: Finder(
          filter: Filter.equals(WeekBoxFields.yearNumber.name, yearNumber),
        ),
      )
      .onSnapshots(database)
      .map(AppUtils.convertSnaps(WeekBox.fromJson));
}

@riverpod
WeekBoxRepository weekBoxRepository(Ref ref) =>
    WeekBoxRepository(ref.watch(dbProvider));
