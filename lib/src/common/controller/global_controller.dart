// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

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
