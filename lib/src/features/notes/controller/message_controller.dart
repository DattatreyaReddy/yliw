import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/utils/extensions/custom_extensions.dart';
import '../domain/message.dart';
import '../repository/message_repository.dart';

part 'message_controller.g.dart';

@riverpod
Stream<List<Message>?> messageListByGroupId(Ref ref, String groupId) =>
    ref.watch(messageRepositoryProvider(groupId)).getMessageList();

@riverpod
AsyncValue<List<ProcessedMessage>> processedMessage(Ref ref, String groupId) {
  final asyncMsgList = ref.watch(messageListByGroupIdProvider(groupId));
  List<Message> messageList = asyncMsgList.valueOrNull ?? [];
  List<ProcessedMessage> processedMessageList = [];
  for (int i = 0; i < messageList.length; i++) {
    final msg = messageList.elementAt(i);

    final prevMsg =
        i < messageList.length - 1 ? messageList.elementAtOrNull(i + 1) : null;
    final isContinuous =
        prevMsg?.dateCreated.isDifferenceUnder(msg.dateCreated);
    final isSameDate = prevMsg?.dateCreated.isSameDay(msg.dateCreated);

    final nextMsg = i > 0 ? messageList.elementAtOrNull(i - 1) : null;
    final hasContinuous =
        nextMsg?.dateCreated.isDifferenceUnder(msg.dateCreated);

    processedMessageList.add((
      message: msg,
      isContinuous: isContinuous.ifNull(),
      hasContinuous: hasContinuous.ifNull(),
      dateChanged: !(isSameDate.ifNull()),
    ));
  }
  return asyncMsgList.copyWithData((_) => processedMessageList);
}
