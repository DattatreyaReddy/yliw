// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'value')
enum Preferences {
  dateOfBirth("DATE_OF_BIRTH");

  const Preferences(this.value);
  final String value;
}
