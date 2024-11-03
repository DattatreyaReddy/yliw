part of '../custom_extensions.dart';

extension BoolExtensions on bool? {
  bool get isNull => this == null;
  bool get isNotNull => !isNull;
  bool ifNull([bool alternative = false]) => this ?? alternative;
  int get toInt => this != null ? (this! ? 1 : 2) : 0;
  int get toIntWithNegative => this != null ? (this! ? 1 : -1) : 0;
}
