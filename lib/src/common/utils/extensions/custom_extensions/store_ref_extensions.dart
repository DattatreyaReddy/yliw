// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:sembast/sembast.dart';

import '../../custom_types.dart';
import '../../json_abstract.dart';

extension StoreRefExtensions<K> on StoreRef<K, JsonObject> {
  Future<List<K>> addAllWithKey<T extends JsonAbstract>(
    Database db,
    List<T> values,
    ConvertFunction<T, K> keyGenerator,
  ) async {
    var keys = <K>[];
    await db.transaction((txn) async {
      for (final value in values) {
        K genKey = keyGenerator(value);
        final key = await record(genKey).add(txn, value.toJson());
        if (key != null) keys.add(key);
      }
    });
    return keys;
  }

  Future<List<K>> addAllWithKeyAndTransaction<T extends JsonAbstract>(
    DatabaseClient txn,
    List<T> values,
    ConvertFunction<T, K> keyGenerator,
  ) async {
    var keys = <K>[];
    for (final value in values) {
      K genKey = keyGenerator(value);
      final key = await record(genKey).add(txn, value.toJson());
      if (key != null) keys.add(key);
    }
    return keys;
  }
}
