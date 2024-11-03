import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/utils/app_utils.dart';
import '../../../../common/utils/extensions/custom_extensions.dart';
import '../../../../common/utils/toast/toast.dart';
import '../../../../common/utils/widgets/emoticons.dart';
import '../../domain/message.dart';
import 'message_data_card.dart';
import 'message_date_card.dart';

class ConversationView extends HookConsumerWidget {
  const ConversationView({
    super.key,
    required this.processedMessageList,
    required this.selectedMessages,
    required this.onToggleSelection,
  });
  final List<ProcessedMessage> processedMessageList;
  final Set<String> selectedMessages;
  final ValueChanged<String> onToggleSelection;

  @override
  Widget build(context, ref) {
    final errorMsgPair =
        useMemoized(() => AppUtils.getEmptyMessages(context), [context]);
    if (processedMessageList.isBlank) {
      return Center(
        child: Emoticons(
          title: errorMsgPair.$1,
          button: errorMsgPair.$2 != null
              ? ElevatedButton.icon(
                  onPressed: () => AppUtils.launchUrlInWeb(
                    context,
                    errorMsgPair.$2!,
                    ref.read(toastProvider),
                  ),
                  icon: Icon(Icons.open_in_new),
                  label: Text(context.l10n.open),
                )
              : null,
        ),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 8),
      reverse: true,
      itemCount: processedMessageList.length,
      itemBuilder: (context, index) {
        final processedMessageData = processedMessageList.elementAt(index);
        return AppUtils.wrapChildIf(
          condition: processedMessageData.dateChanged,
          child: MessageCard(
            processedMessage: processedMessageData,
            anySelected: selectedMessages.isNotBlank,
            isSelected: selectedMessages
                .contains(processedMessageData.message.recordId),
            onToggleSelection: () =>
                onToggleSelection(processedMessageData.message.recordId),
          ),
          wrap: (child) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MessageDateCard(
                dateTime: processedMessageData.message.dateCreated,
              ),
              child,
            ],
          ),
        );
      },
    );
  }
}
