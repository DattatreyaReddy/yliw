import 'package:flutter/material.dart';

import '../../../../common/utils/app_utils.dart';
import '../../../../common/utils/extensions/custom_extensions.dart';
import '../../domain/message.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    super.key,
    required this.processedMessage,
    this.isSelected = false,
    this.anySelected = false,
    this.onToggleSelection,
  });

  final ProcessedMessage processedMessage;
  final bool isSelected;
  final bool anySelected;
  final VoidCallback? onToggleSelection;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: onToggleSelection,
      onSecondaryTap: onToggleSelection,
      onTap: () {
        if (anySelected) {
          onToggleSelection?.call();
        }
      },
      child: Container(
        padding: const EdgeInsets.only(right: 2),
        width: double.infinity,
        color: isSelected ? context.theme.primaryColor.withOpacity(0.4) : null,
        alignment: Alignment.centerRight,
        child: Card(
          margin: EdgeInsets.only(
              bottom: processedMessage.hasContinuous ? 2 : 4,
              top: processedMessage.hasContinuous ? 2 : 4),
          elevation: 0,
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(2),
              topRight: processedMessage.isContinuous
                  ? Radius.circular(2)
                  : Radius.circular(12),
            ),
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: context.widthScale(scale: .7),
            ),
            child: AppUtils.wrapChildIf(
              condition: !processedMessage.hasContinuous,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8) +
                    const EdgeInsets.only(top: 4),
                child: Text(
                  processedMessage.message.message,
                  softWrap: true,
                ),
              ),
              wrap: (child) => Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  child,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8) +
                        const EdgeInsets.only(bottom: 4),
                    child: Text(
                      processedMessage.message.dateCreated.to12hTimeString,
                      softWrap: true,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
