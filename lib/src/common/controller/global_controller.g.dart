// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dbHash() => r'45e8f2669054c9efb982e463baf2b102ab465baa';

/// See also [db].
@ProviderFor(db)
final dbProvider = AutoDisposeProvider<Database>.internal(
  db,
  name: r'dbProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dbHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DbRef = AutoDisposeProviderRef<Database>;
String _$packageInfoHash() => r'a5025c8498b8f2eacf55450228619ff1477adc05';

/// See also [packageInfo].
@ProviderFor(packageInfo)
final packageInfoProvider = AutoDisposeProvider<PackageInfo>.internal(
  packageInfo,
  name: r'packageInfoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$packageInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PackageInfoRef = AutoDisposeProviderRef<PackageInfo>;
String _$appUpdateCheckHash() => r'4871fc9c812ce02373690e8f3d8b8b90a6d9cc46';

/// See also [AppUpdateCheck].
@ProviderFor(AppUpdateCheck)
final appUpdateCheckProvider = NotifierProvider<AppUpdateCheck, bool>.internal(
  AppUpdateCheck.new,
  name: r'appUpdateCheckProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appUpdateCheckHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppUpdateCheck = Notifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
