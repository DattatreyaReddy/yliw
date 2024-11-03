import 'package:flutter/material.dart';

import '../../../../common/utils/extensions/custom_extensions.dart';

class MessageDateCard extends StatelessWidget {
  const MessageDateCard({
    super.key,
    required this.dateTime,
  });

  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Text(
            dateTime.convertToAgo(context),
            style: const TextStyle(
              fontSize: 10,
              letterSpacing: .5,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
