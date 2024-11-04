// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../common/utils/extensions/custom_extensions.dart';

@JsonEnum(valueField: 'value')
enum BoxStatus {
  unknown("UNKNOWN", Colors.white),
  ideal("IDEAL", Colors.lightGreen),
  goodEnjoyment("GOOD_ENJOYMENT", Colors.yellow),
  notGreatEnjoyment("NOT_GREAT_ENJOYMENT", Colors.orange),
  goodImprovement("GOOD_IMPROVEMENT", Colors.lightBlue),
  notGreatImprovement("NOT_GREAT_IMPROVEMENT", Colors.deepPurple),
  failure("FAILURE", Colors.blueGrey),
  ;

  const BoxStatus(this.value, this.color);
  final String value;
  final Color color;

  String getLabel(BuildContext context) => switch (this) {
        unknown => context.l10n.boxStatusUnknown,
        ideal => context.l10n.boxStatusIdeal,
        goodEnjoyment => context.l10n.boxStatusGoodEnjoyment,
        notGreatEnjoyment => context.l10n.boxStatusNotGreatEnjoyment,
        goodImprovement => context.l10n.boxStatusGoodImprovement,
        notGreatImprovement => context.l10n.boxStatusNotGreatImprovement,
        failure => context.l10n.boxStatusFailure,
      };

  BoxStatus getNextState() => switch (this) {
        unknown => ideal,
        ideal => goodEnjoyment,
        goodEnjoyment => notGreatEnjoyment,
        notGreatEnjoyment => goodImprovement,
        goodImprovement => notGreatImprovement,
        notGreatImprovement => failure,
        failure => unknown,
      };
}
