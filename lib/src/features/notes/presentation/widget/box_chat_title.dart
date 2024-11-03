import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/utils/app_utils.dart';
import '../../../../common/utils/extensions/custom_extensions.dart';
import '../../../home/domain/box.dart';
import '../../../home/repository/day_box_repository.dart';
import '../../../home/repository/week_box_repository.dart';
import '../../../home/repository/year_box_repository.dart';
import 'highlight_checkbox.dart';

class BoxChatTitle extends StatelessWidget {
  const BoxChatTitle({super.key, required this.box});
  final Box box;
  @override
  Widget build(BuildContext context) => switch (box) {
        DayBox() => _DayBoxChatTitle(
            key: ValueKey(box.chatGroupId),
            box: box as DayBox,
          ),
        WeekBox() => _WeekBoxChatTitle(
            key: ValueKey(box.chatGroupId),
            box: box as WeekBox,
          ),
        YearBox() => _YearBoxChatTitle(
            key: ValueKey(box.chatGroupId),
            box: box as YearBox,
          ),
      };
}

class _DayBoxChatTitle extends ConsumerWidget {
  const _DayBoxChatTitle({super.key, required this.box});
  final DayBox box;
  @override
  Widget build(context, ref) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 0,
      leading: HighlightCheckbox(
        box: box,
        onChanged: (value) => ref
            .watch(dayBoxRepositoryProvider)
            .save(box.copyWith(hasLandMark: value)),
      ),
      title: Text(
        context.l10n.dayN((box.boxNumber + 1).formatNumber()!),
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(box.date.toDateString),
    );
  }
}

class _WeekBoxChatTitle extends ConsumerWidget {
  const _WeekBoxChatTitle({super.key, required this.box});
  final WeekBox box;
  @override
  Widget build(context, ref) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 0,
      leading: HighlightCheckbox(
        box: box,
        onChanged: (value) => ref
            .watch(weekBoxRepositoryProvider)
            .save(box.copyWith(hasLandMark: value)),
      ),
      title: Text(
        context.l10n.weekN((box.boxNumber + 1).formatNumber()!),
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(AppUtils.formatDates(box.startDate, box.endDate)),
    );
  }
}

class _YearBoxChatTitle extends ConsumerWidget {
  const _YearBoxChatTitle({super.key, required this.box});
  final YearBox box;
  @override
  Widget build(context, ref) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 0,
      leading: HighlightCheckbox(
        box: box,
        onChanged: (value) => ref
            .watch(yearBoxRepositoryProvider)
            .save(box.copyWith(hasLandMark: value)),
      ),
      title: Text(
        context.l10n.yearN((box.boxNumber + 1).formatNumber()!),
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(AppUtils.formatDates(box.startDate, box.endDate)),
    );
  }
}
