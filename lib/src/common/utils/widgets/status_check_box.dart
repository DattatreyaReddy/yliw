// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';

import '../../../features/home/enums/box_status.dart';
import 'check_box_painter.dart';

class StatusCheckBox extends StatelessWidget {
  const StatusCheckBox({
    super.key,
    required this.status,
    this.onTap,
    this.onLongPress,
    this.highlight = false,
    this.isCurrent = false,
    this.isPast = false,
    required this.heroTag,
    this.tooltip,
  });
  final BoxStatus status;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final bool highlight;
  final bool isCurrent;
  final bool isPast;
  final String? tooltip;
  final String heroTag;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Material(
        child: Tooltip(
          message: tooltip ?? status.getLabel(context),
          child: InkWell(
            autofocus: isCurrent,
            onTap: onTap,
            onLongPress: onLongPress,
            onDoubleTap: onLongPress,
            onSecondaryTap: onLongPress,
            child: SizedBox.square(
              dimension: 24,
              child: CustomPaint(
                foregroundPainter: isCurrent
                    ? CurrentCheckBoxOuterPainter()
                    : highlight
                        ? HighlightedCheckBoxOuterPainter()
                        : isPast
                            ? CheckBoxDisabledOuterPainter()
                            : CheckBoxOuterPainter(),
                painter: switch (status) {
                  BoxStatus.unknown => null,
                  BoxStatus.ideal => IdealCheckBoxPainter(),
                  BoxStatus.failure => FailureCheckBoxPainter(),
                  BoxStatus.goodEnjoyment => GoodEnjoymentCheckBoxPainter(),
                  BoxStatus.notGreatEnjoyment =>
                    NotGreatEnjoymentCheckBoxPainter(),
                  BoxStatus.goodImprovement => GoodImprovementCheckBoxPainter(),
                  BoxStatus.notGreatImprovement =>
                    NotGreatImprovementCheckBoxPainter(),
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
