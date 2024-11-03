import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast.dart';

import '../../../common/controller/global_controller.dart';
import '../../../common/utils/app_utils.dart';
import '../../../common/utils/custom_types.dart';
import '../domain/message.dart';

part 'message_repository.g.dart';

class DayBoxRepository {
  final Database _db;
  final String groupId;
  late final StoreRef<String, JsonObject> _store;

  DayBoxRepository(this._db, this.groupId) {
    _store = StoreRef(groupId);
  }

  Future<void> save(String text) async {
    String recordId = await _store.generateKey(_db);
    DateTime now = DateTime.now();
    Message message = Message(
      recordId: recordId,
      groupId: groupId,
      dateCreated: now,
      lastModified: now,
      message: text,
    );
    await _store.record(recordId).add(_db, message.toJson());
  }

  Stream<List<Message>?> getMessageList() => _store
      .query(finder: Finder(sortOrders: [SortOrder(Field.key, false)]))
      .onSnapshots(_db)
      .map(AppUtils.convertSnaps(Message.fromJson));

  Future<void> deleteAll(Set<String> recordIds) =>
      _store.records(recordIds).delete(_db);
}

@riverpod
DayBoxRepository messageRepository(Ref ref, String groupId) =>
    DayBoxRepository(ref.watch(dbProvider), groupId);
