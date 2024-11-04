// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/utils/app_utils.dart';
import '../../setup/controller/setup_controller.dart';
import '../controller/home_controller.dart';
import 'widgets/home_screen.dart';

class DayHomeScreen extends HookConsumerWidget {
  const DayHomeScreen({super.key});

  @override
  Widget build(context, ref) {
    final asyncWeekBoxMap = ref.watch(dayBoxMapProvider);
    final asyncDob = ref.watch(userDateOfBirthProvider);
    final currentDay =
        useMemoized(() => AppUtils.currentDay(asyncDob), [asyncDob]);
    final currentWeek =
        useMemoized(() => AppUtils.currentWeek(asyncDob), [asyncDob]);
    return HomeScreen(
      asyncBoxMap: asyncWeekBoxMap,
      currentSection: currentWeek,
      currentBox: currentDay,
    );
  }
}
