// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast.dart';

import '../../../common/constants/constants.dart';
import '../../../common/controller/global_controller.dart';
import '../../setup/repository/setup_repository.dart';
import '../domain/box.dart';
import '../enums/box_status.dart';
import '../repository/day_box_repository.dart';
import '../repository/week_box_repository.dart';
import '../repository/year_box_repository.dart';

part 'home_service.g.dart';

class HomeService {
  final Database db;
  final SetupRepository setupRepository;
  final DayBoxRepository dayBoxRepository;
  final WeekBoxRepository weekBoxRepository;
  final YearBoxRepository yearBoxRepository;

  const HomeService({
    required this.db,
    required this.setupRepository,
    required this.dayBoxRepository,
    required this.weekBoxRepository,
    required this.yearBoxRepository,
  });

  Future<void> initialSetup(DateTime dob) async {
    final boxList = await compute(_getBoxesFromDateTime, dob);
    await db.transaction((tnx) async {
      await Future.wait([
        yearBoxRepository.saveAll(boxList.years, tnx),
        weekBoxRepository.saveAll(boxList.weeks, tnx),
        dayBoxRepository.saveAll(boxList.days, tnx),
        setupRepository.saveDateOfBirthInTransaction(tnx, dob),
      ]);
    });
  }

  static ({List<YearBox> years, List<WeekBox> weeks, List<DayBox> days})
      _getBoxesFromDateTime(DateTime dob) {
    List<YearBox> yearBoxList = [];
    List<WeekBox> weekBoxList = [];
    List<DayBox> dayBoxList = [];
    for (int year = 0; year < Constants.lifeInYears; year++) {
      yearBoxList.add(YearBox(
        id: year,
        startDate: dob.add(Duration(days: year * Constants.daysInYear)),
        endDate: dob.add(Duration(days: (year + 1) * Constants.daysInYear - 1)),
        boxStatus: BoxStatus.unknown,
      ));
      final weeksTillNow = year * Constants.weeksInYear;
      for (int week = weeksTillNow;
          week < weeksTillNow + Constants.weeksInYear;
          week++) {
        final weekStartDay = week * Constants.daysInWeek;
        final weekEndDay = (week + 1) * Constants.daysInWeek - 1;

        weekBoxList.add(WeekBox(
          id: week,
          startDate: dob.add(Duration(days: weekStartDay)),
          endDate: dob.add(Duration(days: weekEndDay)),
          boxStatus: BoxStatus.unknown,
          yearNumber: year,
        ));

        for (int day = weekStartDay;
            day < weekStartDay + Constants.daysInWeek;
            day++) {
          dayBoxList.add(
            DayBox(
              id: day,
              date: dob.add(Duration(days: day)),
              boxStatus: BoxStatus.unknown,
              weekNumber: week,
              yearNumber: year,
            ),
          );
        }
      }
    }
    return (years: yearBoxList, weeks: weekBoxList, days: dayBoxList);
  }
}

@riverpod
HomeService homeService(Ref ref) => HomeService(
      db: ref.watch(dbProvider),
      dayBoxRepository: ref.watch(dayBoxRepositoryProvider),
      weekBoxRepository: ref.watch(weekBoxRepositoryProvider),
      yearBoxRepository: ref.watch(yearBoxRepositoryProvider),
      setupRepository: ref.watch(setupRepositoryProvider),
    );
