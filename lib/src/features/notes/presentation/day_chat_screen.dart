import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/utils/extensions/custom_extensions.dart';
import '../../home/controller/home_controller.dart';
import '../../home/repository/day_box_repository.dart';
import 'widget/chat_screen.dart';

class DayChatScreen extends HookConsumerWidget {
  const DayChatScreen({super.key, required this.dayNumber});
  final int dayNumber;
  @override
  Widget build(context, ref) {
    final asyncDayBox = ref.watch(dayBoxProvider(dayNumber));
    return asyncDayBox.showUiWhenData(
      context,
      (dayBox) {
        if (dayBox == null) return Container();
        return ChatScreen(
          box: dayBox,
          onStatusUpdated: (status) {
            final newDay = dayBox.copyWith(boxStatus: status);
            ref.watch(dayBoxRepositoryProvider).save(newDay);
          },
        );
      },
      addScaffoldWrapper: true,
    );
  }
}
