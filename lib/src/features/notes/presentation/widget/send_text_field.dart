import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/utils/extensions/custom_extensions.dart';

class SendTextField extends HookConsumerWidget {
  const SendTextField({
    super.key,
    required this.onSend,
  });

  final ValueChanged<String> onSend;

  @override
  Widget build(context, ref) {
    final chatMsg = useTextEditingController();
    final focusNode = useFocusNode();

    sendMessage() async {
      if (chatMsg.text.isBlank) return;
      onSend(chatMsg.text);
      chatMsg.clear();
      focusNode.requestFocus();
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        maxLines: 4,
        minLines: 1,
        controller: chatMsg,
        autofocus: true,
        keyboardType: TextInputType.multiline,
        focusNode: focusNode,
        onEditingComplete: sendMessage,
        onTapOutside: (_) => context.hideKeyboard,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          suffixIcon: IconButton(
            onPressed: sendMessage,
            icon: const Icon(Icons.send_rounded),
          ),
        ),
      ),
    );
  }
}
