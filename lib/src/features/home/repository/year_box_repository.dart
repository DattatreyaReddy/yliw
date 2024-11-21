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

part 'year_box_repository.g.dart';

class YearBoxRepository extends GenericRepository<int, YearBox> {
  YearBoxRepository(Database db) : super(db, "YearBox", YearBox.fromJson);

  Stream<LinkedHashMap<int, List<YearBox>>?>
      getYearBoxListGroupByDecadeNumber() => store
          .query()
          .onSnapshots(database)
          .map(AppUtils.convertSnaps(YearBox.fromJson))
          .map((snaps) => snaps.groupBy((snap) => snap.id ~/ 10));
}

@riverpod
YearBoxRepository yearBoxRepository(Ref ref) =>
    YearBoxRepository(ref.watch(dbProvider));
