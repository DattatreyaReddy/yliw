import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/utils/extensions/custom_extensions.dart';
import '../../home/controller/home_controller.dart';
import '../../home/repository/week_box_repository.dart';
import 'widget/chat_screen.dart';

class WeekChatScreen extends HookConsumerWidget {
  const WeekChatScreen({super.key, required this.weekNumber});
  final int weekNumber;
  @override
  Widget build(context, ref) {
    final asyncWeekBox = ref.watch(weekBoxProvider(weekNumber));
    return asyncWeekBox.showUiWhenData(
      context,
      (weekBox) {
        if (weekBox == null) return Container();
        return ChatScreen(
          box: weekBox,
          onStatusUpdated: (status) {
            final newWeek = weekBox.copyWith(boxStatus: status);
            ref.watch(weekBoxRepositoryProvider).save(newWeek);
          },
        );
      },
      addScaffoldWrapper: true,
    );
  }
}