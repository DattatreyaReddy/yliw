// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/utils/extensions/custom_extensions.dart';
import '../../../../common/utils/toast/toast.dart';
import '../../../home/domain/box.dart';
import '../../../home/enums/box_status.dart';
import '../../controller/message_controller.dart';
import '../../repository/message_repository.dart';
import 'box_chat_title.dart';
import 'box_status_update_dropdown.dart';
import 'conversation_view.dart';
import 'send_text_field.dart';

class ChatScreen extends HookConsumerWidget {
  const ChatScreen({
    super.key,
    required this.box,
    required this.onStatusUpdated,
  });
  final Box box;
  final ValueChanged<BoxStatus> onStatusUpdated;
  @override
  Widget build(context, ref) {
    final asyncMessageList =
        ref.watch(processedMessageProvider(box.chatGroupId));
    final selectedMsgSet = useState(<String>{});
    return Scaffold(
      appBar: selectedMsgSet.value.isBlank
          ? AppBar(
              title: BoxChatTitle(box: box),
              titleSpacing: 0,
              actions: [
                BoxStatusUpdateDropdown(
                  current: box.boxStatus,
                  onChanged: onStatusUpdated,
                ),
              ],
            )
          : AppBar(
              leading: IconButton(
                onPressed: () => selectedMsgSet.value = {},
                icon: const Icon(Icons.close_rounded),
              ),
              title: Text(context.l10n
                  .nSelected(selectedMsgSet.value.length.formatNumber()!)),
              actions: [
                IconButton(
                  onPressed: () async {
                    await ref
                        .read(messageRepositoryProvider(box.chatGroupId))
                        .deleteAll(selectedMsgSet.value);
                    if (context.mounted) {
                      ref.read(toastProvider)?.show(context.l10n
                          .deletedSuccessfully(selectedMsgSet.value.length));
                    }
                    selectedMsgSet.value = {};
                  },
                  icon: const Icon(Icons.delete_rounded),
                ),
                IconButton(
                  onPressed: () {
                    StringBuffer message = StringBuffer();
                    for (var msgId in selectedMsgSet.value) {
                      String? newMsg = asyncMessageList.valueOrNull
                          .firstWhereOrNull((msg) => msgId == msg.message.id)
                          ?.message
                          .message;
                      if (newMsg.isNotBlank) {
                        if (message.isNotEmpty) {
                          message.write("\n");
                        }
                        message.write(newMsg);
                      }
                    }
                    Clipboard.setData(ClipboardData(text: message.toString()));
                    ref.read(toastProvider)?.show(context.l10n.copiedSuccess);
                    selectedMsgSet.value = {};
                  },
                  icon: const Icon(Icons.copy_rounded),
                ),
              ],
            ),
      body: asyncMessageList.showUiWhenData(
        context,
        (data) => Column(
          children: [
            Expanded(
              child: ConversationView(
                processedMessageList: data,
                selectedMessages: selectedMsgSet.value,
                onToggleSelection: (value) {
                  if (selectedMsgSet.value.contains(value)) {
                    selectedMsgSet.value = {...selectedMsgSet.value}
                      ..remove(value);
                  } else {
                    selectedMsgSet.value = {...selectedMsgSet.value, value};
                  }
                },
              ),
            ),
            SendTextField(
              onSend: ref
                  .read(messageRepositoryProvider(box.chatGroupId))
                  .saveMessage,
            ),
            Gap(8),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
