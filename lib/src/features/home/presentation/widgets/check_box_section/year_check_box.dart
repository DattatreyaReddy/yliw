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
import '../../../repository/year_box_repository.dart';

class YearCheckBox extends ConsumerWidget {
  const YearCheckBox({
    super.key,
    required this.yearBox,
    required this.current,
  });
  final YearBox yearBox;
  final int current;
  @override
  Widget build(context, ref) {
    return StatusCheckBox(
      heroTag: yearBox.chatGroupId,
      status: yearBox.boxStatus,
      highlight: yearBox.boxNumber == current || yearBox.hasLandMark,
      isCurrent: yearBox.boxNumber == current,
      isPast: yearBox.endDate.isBefore(DateTime.now()),
      tooltip: (yearBox.boxNumber + 1).formatNumber(),
      onTap: () => YearChatRoute(yearBox.boxNumber).go(context),
      onLongPress: () => ref
          .read(yearBoxRepositoryProvider)
          .save(yearBox.copyWith(boxStatus: yearBox.boxStatus.getNextState())),
    );
  }
}
