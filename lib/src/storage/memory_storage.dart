import 'dart:convert';

import 'package:auto_cache/src/config/memory_config.dart';
import 'package:auto_cache/src/library/expiry.dart';
import 'package:auto_cache/src/library/entry.dart';
import 'package:auto_cache/src/library/memory_capsule.dart';
import 'package:auto_cache/src/storage/storage_aware.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IMemoryStorage<Hashable, Value>
    implements StorageAwareMixin<Value> {
  /// Memory cache keys
  late final Set<UniqueKey> _keys = <UniqueKey>{};

  /// Configuration
  late final MemoryConfig _config;

  @override
  List<UniqueKey?> get allKeys => _keys.toList();

  @override
  Future<Iterable<Value?>> get allObjects async {
    var objects = <Value?>[];

    for (var key in allKeys) {
      objects.add(await object(key));
    }

    return objects;
  }

  Future<MemoryCapsule> capsule({UniqueKey? forKey}) async {
    final preferences = await SharedPreferences.getInstance();
    final capsuleJson = preferences.getString(forKey.toString());
    return MemoryCapsule.fromJson(jsonDecode(capsuleJson ?? ''));
  }

  @override
  Future<Entry<Value>> entry(UniqueKey key) async {
    final capsule = await this.capsule(forKey: key);
    return Entry(capsule.object, expiry: capsule.expiry);
  }

  @override
  Future<void> removeAll() async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }

  @override
  Future<void> removeExpiredObjects() async {
    final allKeys = _keys;
    for (var key in allKeys) {
      removeObjectIfExpired(key: key);
    }
  }

  Future<void> removeObjectIfExpired({required UniqueKey key}) async {
    final capsule = await this.capsule(forKey: key);
    if (capsule.expiry?.isExpired ?? true) {
      removeObject(key);
    }
  }

  @override
  Future<void> removeObject(UniqueKey key) async {
    final preferences = await SharedPreferences.getInstance();
    preferences.remove(key.toString());
    _keys.remove(key);
  }

  @override
  Future<void> setObject(object, UniqueKey key, Expiry? expiry) async {
    final preferences = await SharedPreferences.getInstance();

    final capsule = MemoryCapsule(
      object: object,
      expiry: Expiry.from(expiry?.dateTime ?? _config.expiry?.dateTime),
    );

    final capsuleJson = capsule.toJson();

    preferences.setString(
      key.toString(),
      capsuleJson.toString(),
    );

    _keys.add(key);
  }
}

class MemoryStorage<Hashable, Value> extends IMemoryStorage<Hashable, Value> {}
