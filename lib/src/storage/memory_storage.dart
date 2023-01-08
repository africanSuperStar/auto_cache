import 'package:auto_cache/src/config/memory_config.dart';
import 'package:auto_cache/src/library/expiry.dart';
import 'package:auto_cache/src/library/entry.dart';
import 'package:auto_cache/src/storage/storage_aware.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MemoryStorage<Hashable, Value> extends Object implements IStorageAware {
  final preferences = SharedPreferences.getInstance();

  // Memory cache keys
  late final Set<Key> _keys = <Key>{};

  /// Configuration
  late final MemoryConfig _config;

  @override
  List<Key?> get allKeys => _keys.toList();

  @override
  Iterable get allObjects => allKeys.map((key) => object(key));

  @override
  Entry entry(Key key) {
    // TODO: implement entry
    throw UnimplementedError();
  }

  @override
  bool isExpiredObject(Key key) {
    // TODO: implement isExpiredObject
    throw UnimplementedError();
  }

  @override
  object(Key? key) {
    // TODO: implement object
    throw UnimplementedError();
  }

  @override
  bool objectExists(Key key) {
    // TODO: implement objectExists
    throw UnimplementedError();
  }

  @override
  void removeAll() {
    // TODO: implement removeAll
  }

  @override
  void removeExpiredObjects() {
    // TODO: implement removeExpiredObjects
  }

  @override
  void removeObject(Key key) {
    // TODO: implement removeObject
  }

  @override
  void setObject(object, Key key, Expiry? expiry) {
    // TODO: implement setObject
  }
}

extension MemoryStorageExtension on MemoryStorage {}
