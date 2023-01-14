import 'dart:convert';

import 'package:auto_cache/src/config/memory_config.dart';
import 'package:auto_cache/src/library/expiry.dart';
import 'package:auto_cache/src/library/entry.dart';
import 'package:auto_cache/src/library/memory_capsule.dart';
import 'package:auto_cache/src/storage/storage_aware.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workmanager/workmanager.dart';

abstract class IBackgroundMemoryStorage<Hashable, Value>
    implements StorageAwareMixin<Value> {
  /// Memory cache keys
  late final Set<UniqueKey> _keys = <UniqueKey>{};

  /// Configuration
  late final MemoryConfig _config;

  /// Background Work Manager
  final workManager = Workmanager();

  /// Background Tasks
  static const allObjectsTaskKey =
      "dev.auto_cache.backgroundMemoryStorage.allObjectsTask";
  static const capsuleTaskKey =
      "dev.auto_cache.backgroundMemoryStorage.capsuleTask";
  static const entryTaskKey =
      "dev.auto_cache.backgroundMemoryStorage.entryTask";

  @override
  List<UniqueKey?> get allKeys => _keys.toList();

  @override
  @pragma('vm:entry-point')
  Future<Iterable<Value?>> get allObjects async {
    var objects = <Value?>[];

    workManager.executeTask((task, inputData) async {
      switch (task) {
        case allObjectsTaskKey:
          for (var key in allKeys) {
            objects.add(await object(key));
          }
          break;
      }

      return Future.value(true);
    });

    return Future.value(objects);
  }

  @pragma('vm:entry-point')
  Future<MemoryCapsule?> capsule({UniqueKey? forKey}) async {
    late MemoryCapsule? capsule;

    workManager.executeTask((task, inputData) async {
      switch (task) {
        case capsuleTaskKey:
          final preferences = await SharedPreferences.getInstance();
          final capsuleJson = preferences.getString(forKey.toString());
          capsule = MemoryCapsule.fromJson(jsonDecode(capsuleJson ?? ''));
          break;
      }

      return Future.value(true);
    });

    return Future.value(capsule);
  }

  @override
  @pragma('vm:entry-point')
  Future<Entry<Value>?> entry(UniqueKey key) async {
    late MemoryCapsule? capsule;

    workManager.executeTask((task, inputData) async {
      switch (task) {
        case entryTaskKey:
          capsule = await this.capsule(forKey: key);
          break;
      }

      return Future.value(true);
    });

    return Entry(capsule?.object, expiry: capsule?.expiry);
  }

  @override
  @pragma('vm:entry-point')
  Future<void> removeAll() async {
    workManager.executeTask((task, inputData) async {
      final preferences = await SharedPreferences.getInstance();
      return preferences.clear();
    });
  }

  @override
  @pragma('vm:entry-point')
  Future<void> removeExpiredObjects() async {
    workManager.executeTask((task, inputData) async {
      final allKeys = _keys;
      for (var key in allKeys) {
        removeObjectIfExpired(key: key);
      }

      return Future.value(true);
    });
  }

  Future<void> removeObjectIfExpired({required UniqueKey key}) async {
    final capsule = await this.capsule(forKey: key);
    if (capsule?.expiry?.isExpired ?? true) {
      removeObject(key);
    }
  }

  @override
  @pragma('vm:entry-point')
  Future<void> removeObject(UniqueKey key) async {
    workManager.executeTask((task, inputData) async {
      final preferences = await SharedPreferences.getInstance();
      preferences.remove(key.toString());

      return Future.value(_keys.remove(key));
    });
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

class BackgroundMemoryStorage<Hashable, Value>
    extends IBackgroundMemoryStorage<Hashable, Value> {}
