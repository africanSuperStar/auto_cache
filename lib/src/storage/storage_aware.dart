import 'package:auto_cache/src/library/expiry.dart';
import 'package:flutter/foundation.dart';

abstract class StorageAware<Value> {
  /// Get all keys in the storage
  late final List<Key?> allKeys;

  /// Get all objects from the storage
  late final List<Value?> allObjects;

  /// Tries to retrieve the object from the storage.
  /// - Parameter key: Unique key to identify the object in the cache
  /// - Returns: Cached object or nil if not found
  Value? object(Key key);

  /// Get cache entry which includes object with metadata.
  /// - Parameter key: Unique key to identify the object in the cache
  /// - Returns: Object wrapper with metadata or nil if not found
  MapEntry<Key, Value> entry(Key key);

  /// Removes the object by the given key.
  /// - Parameter key: Unique key to identify the object.
  void removeObject(Key key);

  /// Saves passed object.
  /// - Parameter key: Unique key to identify the object in the cache.
  /// - Parameter object: Object that needs to be cached.
  /// - Parameter expiry: Overwrite expiry for this object only.
  void setObject(Value object, Key key, Expiry? expiry);

  /// Check if an object exist by the given key.
  /// - Parameter key: Unique key to identify the object.
  bool objectExists(Key key);

  /// Removes all objects from the cache storage.
  void removeAll();

  /// Clears all expired objects.
  void removeExpiredObjects();

  /// Check if an expired object by the given key.
  /// - Parameter key: Unique key to identify the object.
  bool isExpiredObject(Key key);
}
