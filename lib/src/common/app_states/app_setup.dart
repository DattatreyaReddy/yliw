import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_setup.freezed.dart';

@freezed
sealed class AppSetup with _$AppSetup {
  factory AppSetup.pending() = SetupPending;
  factory AppSetup.loading() = SetupLoading;
  factory AppSetup.completed({required DateTime dateOfBirth}) = SetupCompleted;
}
