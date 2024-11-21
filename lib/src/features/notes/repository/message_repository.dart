// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast.dart';

import '../../../common/controller/global_controller.dart';
import '../../../common/utils/app_utils.dart';
import '../../../common/utils/repository/generic_repository.dart';
import '../domain/message.dart';

part 'message_repository.g.dart';

class DayBoxRepository extends GenericRepository<String, Message> {
  final String groupId;

  DayBoxRepository(Database db, this.groupId)
      : super(db, groupId, Message.fromJson);

  Future<void> saveMessage(String text) => database.transaction((txn) async {
        String recordId = await store.generateKey(txn);
        DateTime now = DateTime.now();
        Message message = Message(
          id: recordId,
          groupId: groupId,
          dateCreated: now,
          lastModified: now,
          message: text,
        );
        await save(message, txn);
      });

  Stream<List<Message>?> getMessageList() => store
      .query(finder: Finder(sortOrders: [SortOrder(Field.key, false)]))
      .onSnapshots(database)
      .map(AppUtils.convertSnaps(Message.fromJson));

  Future<void> deleteAll(Set<String> recordIds) =>
      store.records(recordIds).delete(database);
}

@riverpod
DayBoxRepository messageRepository(Ref ref, String groupId) =>
    DayBoxRepository(ref.watch(dbProvider), groupId);
