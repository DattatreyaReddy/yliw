// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';

import '../../../features/home/enums/box_status.dart';
import '../../constants/constants.dart';

class CheckBoxOuterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, 24, 24),
        Radius.circular(4), // Radius for the corners
      ),
      Paint()
        ..style = PaintingStyle.stroke
        ..color = Colors.blueGrey
        ..strokeWidth = 4,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CheckBoxDisabledOuterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, 24, 24),
        Radius.circular(4), // Radius for the corners
      ),
      Paint()
        ..style = PaintingStyle.stroke
        ..color = Colors.grey
        ..strokeWidth = 4,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CurrentCheckBoxOuterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, 24, 24),
        Radius.circular(4), // Radius for the corners
      ),
      Paint()
        ..style = PaintingStyle.stroke
        ..color = Colors.lightGreen
        ..strokeWidth = 4,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class HighlightedCheckBoxOuterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, 24, 24),
        Radius.circular(4), // Radius for the corners
      ),
      Paint()
        ..style = PaintingStyle.stroke
        ..color = Colors.amber
        ..strokeWidth = 4,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class LandMarkCheckBoxOuterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, 24, 24),
        Radius.circular(4), // Radius for the corners
      ),
      Paint()
        ..style = PaintingStyle.stroke
        ..color = Colors.cyan
        ..strokeWidth = 4,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class IdealCheckBoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(
      Constants.checkBoxRect,
      Constants.paint..color = BoxStatus.ideal.color,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class FailureCheckBoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(
      Constants.checkBoxRect,
      Constants.paint..color = BoxStatus.failure.color,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class GoodEnjoymentCheckBoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(
      Constants.checkBoxRect,
      Constants.paint..color = BoxStatus.goodEnjoyment.color,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class NotGreatEnjoymentCheckBoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(
      Constants.checkBoxRect,
      Constants.paint..color = BoxStatus.notGreatEnjoyment.color,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class GoodImprovementCheckBoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(
      Constants.checkBoxRect,
      Constants.paint..color = BoxStatus.goodImprovement.color,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class NotGreatImprovementCheckBoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(
      Constants.checkBoxRect,
      Constants.paint..color = BoxStatus.notGreatImprovement.color,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
