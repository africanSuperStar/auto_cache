import 'package:auto_cache/src/library/entry.dart';
import 'package:auto_cache/src/library/entry_failure.dart';
import 'package:auto_cache/src/library/expiry.dart';
import 'package:flutter/foundation.dart';

mixin IStorageAwareMixin<Value> {
  /// Get all keys in the storage
  List<UniqueKey?> get allKeys;

  /// Get all objects from the storage
  Future<Iterable<Value?>> get allObjects;

  /// Get cache entry which includes object with metadata.
  /// - Parameter key: Unique key to identify the object in the cache
  /// - Returns: Object wrapper with metadata or nil if not found
  Future<Entry<Value>> entry(UniqueKey key);

  /// Removes the object by the given key.
  /// - Parameter key: Unique key to identify the object.
  Future<void> removeObject(UniqueKey key);

  /// Saves passed object.
  /// - Parameter key: Unique key to identify the object in the cache.
  /// - Parameter object: Object that needs to be cached.
  /// - Parameter expiry: Overwrite expiry for this object only.
  Future<void> setObject(Value object, UniqueKey key, Expiry? expiry);

  /// Removes all objects from the cache storage.
  void removeAll();

  /// Clears all expired objects.
  Future<void> removeExpiredObjects();
}

mixin StorageAwareMixin<Value> on IStorageAwareMixin<Value> implements Object {}

extension StorageAwareExtension<Value> on StorageAwareMixin<Value> {
  /// Tries to retrieve the object from the storage.
  /// - Parameter key: Unique key to identify the object in the cache
  /// - Returns: Cached object or nil if not found
  Future<Value?> object(UniqueKey? key) async {
    if (key == null) {
      throw const EntryFailure.invalidKey();
    }

    try {
      return (await entry(key)).object;
    } finally {
      throw const EntryFailure.invalidKey();
    }
  }

  /// Check if an object exist by the given key.
  /// - Parameter key: Unique key to identify the object.
  bool objectExists(UniqueKey key) {
    try {
      final _ = object(key);
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Check if an expired object by the given key.
  /// - Parameter key: Unique key to identify the object.
  Future<bool?> isExpiredObject(UniqueKey key) async {
    try {
      final entry = this.entry(key);
      return (await entry).expiry?.isExpired;
    } catch (_) {
      return true;
    }
  }
}
