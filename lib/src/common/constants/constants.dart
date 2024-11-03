import 'dart:ui';

abstract class Constants {
  static const int lifeInYears = 100;
  static const int weeksInYear = 52;
  static const int daysInWeek = 7;
  static const int daysInYear = 364;
  static const String waitButWhyPostUrl =
      "https://waitbutwhy.com/2014/05/life-weeks.html";
  static const String waitButWhyUrl = "https://waitbutwhy.com/";
  static const String githubUrl = "https://github.com/DattatreyaReddy/yliw";
  static const String padyaGithubUrl = "https://github.com/DattatreyaReddy";

  static const String githubLatestReleaseUrl =
      "https://github.com/DattatreyaReddy/yliw/releases/latest";

  static final RRect checkBoxRect = RRect.fromRectAndRadius(
    Rect.fromLTWH(0, 0, 23, 23),
    Radius.circular(6), // Radius for the corners
  );

  static final paint = Paint()..style = PaintingStyle.fill;

  static String latestReleaseApiUrl =
      "https://api.github.com/repos/DattatreyaReddy/yliw/releases/latest";
}
