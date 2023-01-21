import 'package:auto_cache/src/library/entry.dart';
import 'package:auto_cache/src/library/expiry.dart';
import 'package:flutter/foundation.dart';

import 'auto_cache_platform_interface.dart';

class AutoCache {
  /// Get cache entry which includes object with metadata.
  /// - Parameter key: Unique key to identify the object in the cache
  /// - Returns: Object wrapper with metadata or nil if not found
  Future<Entry?> entry(UniqueKey key) {
    return AutoCachePlatform.background.entry(key);
  }

  /// Removes the object by the given key.
  /// - Parameter key: Unique key to identify the object.
  Future<void> removeObject(UniqueKey key) {
    return AutoCachePlatform.background.removeObject(key);
  }

  /// Saves passed object.
  /// - Parameter key: Unique key to identify the object in the cache.
  /// - Parameter object: Object that needs to be cached.
  /// - Parameter expiry: Overwrite expiry for this object only.
  Future<void> setObject<Value>(Value object, UniqueKey key) {
    return AutoCachePlatform.background.setObject(
      object,
      key,
      Expiry.from(
        DateTime.now()..add(const Duration(days: 200)),
      ),
    );
  }

  /// Removes all objects from the cache storage.
  void removeAll() {
    AutoCachePlatform.background.removeAll();
  }

  /// Clears all expired objects.
  Future<void> removeExpiredObjects() {
    return AutoCachePlatform.background.removeExpiredObjects();
  }
}
