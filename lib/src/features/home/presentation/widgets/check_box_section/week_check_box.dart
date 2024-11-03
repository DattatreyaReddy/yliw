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
      status: weekBox.boxStatus,
      highlight: current == weekBox.boxNumber || weekBox.hasLandMark,
      isCurrent: current == weekBox.boxNumber,
      isPast: weekBox.endDate.isBefore(DateTime.now()),
      tooltip: (weekBox.boxNumber + 1).formatNumber(),
      onTap: () => WeekChatRoute(weekBox.boxNumber).go(context),
      onLongPress: () => ref
          .read(weekBoxRepositoryProvider)
          .save(weekBox.copyWith(boxStatus: weekBox.boxStatus.getNextState())),
    );
  }
}
