import 'package:tekartik_app_flutter_sembast/setup/sembast_flutter.dart';

import '../../constants/enums/generic_entity.dart';
import '../app_utils.dart';
import '../custom_types.dart';

abstract class GenericRepository<S, T extends GenericEntity<S>> {
  final Database database;
  final StoreRef<S, JsonObject> store;
  final GenericFromJson<T> fromJson;

  GenericRepository(this.database, String _storeName, this.fromJson)
      : store = StoreRef(_storeName);

  Stream<List<T>> watchAll() =>
      store.query().onSnapshots(database).map(AppUtils.convertSnaps(fromJson));

  Stream<T?> watchById(S id) =>
      store.record(id).onSnapshot(database).map(AppUtils.convertSnap(fromJson));

  Future<int> getCount([DatabaseClient? dbClient]) =>
      wrap(dbClient, (txn) => store.count(txn));

  Future<T?> getById(S id, [DatabaseClient? dbClient]) async {
    return wrap(
      dbClient,
      (txn) => store.record(id).get(txn).then(AppUtils.convertGet(fromJson)),
    );
  }

  Future<void> save(T entity, [DatabaseClient? dbClient]) => wrap(
        dbClient,
        (txn) => store.record(entity.id).put(txn, entity.toJson()),
      );

  Future<void> saveAll(List<T> entities, [DatabaseClient? dbClient]) async {
    if (entities.isEmpty) return;
    return wrap(
      dbClient,
      (txn) => Future.wait([for (final entry in entities) save(entry, txn)]),
    );
  }

  Future<U> wrap<U>(
    DatabaseClient? dbClient,
    Future<U> Function(DatabaseClient) call,
  ) async {
    if (dbClient == null) {
      return await database.transaction((txn) => call(txn));
    }
    return await call(dbClient);
  }
}
