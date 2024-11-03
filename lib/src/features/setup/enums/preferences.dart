import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'value')
enum Preferences {
  dateOfBirth("DATE_OF_BIRTH");

  const Preferences(this.value);
  final String value;
}
