// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:tekartik_app_flutter_sembast/sembast.dart';

import 'src/common/controller/global_controller.dart';
import 'src/yliw.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var dbFactory = getDatabaseFactory(rootPath: "yliw");
  final Database database =
      await dbFactory.openDatabase("yliw-2.db", version: 1);
  final packageInfo = await PackageInfo.fromPlatform();
  runApp(
    ProviderScope(
      overrides: [
        dbProvider.overrideWithValue(database),
        packageInfoProvider.overrideWithValue(packageInfo),
      ],
      child: const YLIW(),
    ),
  );
}
