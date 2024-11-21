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
import '../../../repository/week_box_repository.dart';

class WeekCheckBox extends ConsumerWidget {
  const WeekCheckBox({
    super.key,
    required this.weekBox,
    required this.current,
  });
  final WeekBox weekBox;
  final int current;
  @override
  Widget build(context, ref) {
    return StatusCheckBox(
      heroTag: weekBox.chatGroupId,
      status: weekBox.boxStatus,
      highlight: current == weekBox.id || weekBox.hasLandMark,
      isCurrent: current == weekBox.id,
      isPast: weekBox.endDate.isBefore(DateTime.now()),
      tooltip: (weekBox.id + 1).formatNumber(),
      onTap: () => WeekChatRoute(weekBox.id).go(context),
      onLongPress: () => ref
          .read(weekBoxRepositoryProvider)
          .save(weekBox.copyWith(boxStatus: weekBox.boxStatus.getNextState())),
    );
  }
}
