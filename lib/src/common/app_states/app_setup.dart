// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_setup.freezed.dart';

@freezed
sealed class AppSetup with _$AppSetup {
  factory AppSetup.pending() = SetupPending;
  factory AppSetup.loading() = SetupLoading;
  factory AppSetup.completed({required DateTime dateOfBirth}) = SetupCompleted;
}
