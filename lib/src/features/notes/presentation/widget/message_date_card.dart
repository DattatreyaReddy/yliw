// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

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
