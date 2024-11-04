// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/utils/extensions/custom_extensions.dart';
import '../../home/controller/home_controller.dart';
import '../../home/repository/year_box_repository.dart';
import 'widget/chat_screen.dart';

class YearChatScreen extends HookConsumerWidget {
  const YearChatScreen({super.key, required this.yearNumber});
  final int yearNumber;
  @override
  Widget build(context, ref) {
    final asyncYearBox = ref.watch(yearBoxProvider(yearNumber));
    return asyncYearBox.showUiWhenData(
      context,
      (yearBox) {
        if (yearBox == null) return Container();
        return ChatScreen(
          box: yearBox,
          onStatusUpdated: (status) {
            final newYear = yearBox.copyWith(boxStatus: status);
            ref.watch(yearBoxRepositoryProvider).save(newYear);
          },
        );
      },
      addScaffoldWrapper: true,
    );
  }
}
