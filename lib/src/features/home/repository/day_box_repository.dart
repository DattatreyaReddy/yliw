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

part 'day_box_repository.g.dart';

class DayBoxRepository extends GenericRepository<int, DayBox> {
  DayBoxRepository(Database db) : super(db, "DayBox", DayBox.fromJson);

  Stream<LinkedHashMap<int, List<DayBox>>?> getDayBoxListGroupByWeekNumber() =>
      store
          .query()
          .onSnapshots(database)
          .map(AppUtils.convertSnaps(DayBox.fromJson))
          .map((snaps) => snaps.groupBy((snap) => snap.weekNumber));

  Stream<List<DayBox>?> getDayBoxListByWeekNumber(int weekNumber) => store
      .query(
        finder: Finder(
          filter: Filter.equals(DayBoxFields.weekNumber.name, weekNumber),
        ),
      )
      .onSnapshots(database)
      .map(AppUtils.convertSnaps(DayBox.fromJson));
}

@riverpod
DayBoxRepository dayBoxRepository(Ref ref) =>
    DayBoxRepository(ref.watch(dbProvider));
