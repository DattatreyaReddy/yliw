// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/extensions/custom_extensions.dart';
import '../../../../../common/utils/widgets/status_check_box.dart';
import '../../../../../router/router_config.dart';
import '../../../domain/box.dart';
import '../../../repository/day_box_repository.dart';

class DayCheckBox extends ConsumerWidget {
  const DayCheckBox({
    super.key,
    required this.dayBox,
    required this.current,
  });
  final DayBox dayBox;
  final int current;
  @override
  Widget build(context, ref) {
    return StatusCheckBox(
      status: dayBox.boxStatus,
      highlight: dayBox.hasLandMark,
      isCurrent: current == dayBox.boxNumber,
      isPast: dayBox.date.isBefore(DateTime.now()),
      tooltip: (dayBox.boxNumber + 1).formatNumber(),
      onTap: () => DayChatRoute(dayBox.boxNumber).go(context),
      onLongPress: () => ref
          .read(dayBoxRepositoryProvider)
          .save(dayBox.copyWith(boxStatus: dayBox.boxStatus.getNextState())),
    );
  }
}
