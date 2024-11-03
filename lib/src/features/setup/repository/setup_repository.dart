import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast.dart';

import '../../../common/controller/global_controller.dart';
import '../enums/preferences.dart';

part 'setup_repository.g.dart';

class SetupRepository {
  final Database _db;
  late final StoreRef<String, Object?> _store;

  SetupRepository(this._db) {
    _store = StoreRef("Settings");
  }

  Stream<DateTime?> getUserDataOfBirth() {
    return _store
        .record(Preferences.dateOfBirth.value)
        .cast<String, int?>()
        .onSnapshot(_db)
        .map((snap) {
      final dob = snap?.value;
      if (dob == null) {
        return null;
      }
      return DateTime.fromMillisecondsSinceEpoch(dob);
    });
  }

  Future<void> saveDateOfBirth(DateTime? dateOfBirth) async {
    if (dateOfBirth == null) {
      await _store.record(Preferences.dateOfBirth.value).delete(_db);
    } else {
      await _store
          .record(Preferences.dateOfBirth.value)
          .put(_db, dateOfBirth.millisecondsSinceEpoch);
    }
  }

  Future<void> saveDateOfBirthInTransaction(
      DatabaseClient transaction, DateTime? dateOfBirth) async {
    if (dateOfBirth == null) {
      await _store.record(Preferences.dateOfBirth.value).delete(transaction);
    } else {
      await _store
          .record(Preferences.dateOfBirth.value)
          .put(transaction, dateOfBirth.millisecondsSinceEpoch);
    }
  }
}

@riverpod
SetupRepository setupRepository(Ref ref) =>
    SetupRepository(ref.watch(dbProvider));
