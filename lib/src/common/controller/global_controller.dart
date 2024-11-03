import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast.dart';

part 'global_controller.g.dart';

@riverpod
Database db(Ref ref) => throw UnimplementedError("");

@riverpod
PackageInfo packageInfo(ref) => throw UnimplementedError();

@Riverpod(keepAlive: true)
class AppUpdateCheck extends _$AppUpdateCheck {
  @override
  bool build() => false;

  bool checkCompleted() => state = true;
}
