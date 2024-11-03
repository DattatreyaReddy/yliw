import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/app_states/app_setup.dart';
import '../repository/setup_repository.dart';

part 'setup_controller.g.dart';

@riverpod
Stream<DateTime?> userDateOfBirth(Ref ref) {
  return ref.watch(setupRepositoryProvider).getUserDataOfBirth();
}

@riverpod
class AppSetupState extends _$AppSetupState {
  @override
  AppSetup build() {
    final AsyncValue dobValue = ref.watch(userDateOfBirthProvider);
    return switch (dobValue) {
      AsyncError() => AppSetup.loading(),
      AsyncLoading() => AppSetup.loading(),
      AsyncData(value: DateTime? dob) =>
        dob == null ? AppSetup.pending() : AppSetup.completed(dateOfBirth: dob),
      _ => throw UnimplementedError(),
    };
  }
}
