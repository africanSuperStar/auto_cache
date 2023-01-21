import 'dart:convert';

import 'package:auto_cache/src/config/memory_config.dart';
import 'package:auto_cache/src/library/expiry.dart';
import 'package:auto_cache/src/library/entry.dart';
import 'package:auto_cache/src/library/memory_capsule.dart';
import 'package:auto_cache/src/storage/background/background_callback_dispatcher.dart';
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

  /// Dynamic Mapped Input Data
  Map<String, dynamic> inputData = {};

  /// Background Tasks
  static const allObjectsTaskKey =
      "dev.auto_cache.backgroundMemoryStorage.allObjectsTask";
  static const capsuleTaskKey =
      "dev.auto_cache.backgroundMemoryStorage.capsuleTask";
  static const entryTaskKey =
      "dev.auto_cache.backgroundMemoryStorage.entryTask";

  /// Background Work Manager
  final workManager = Workmanager();

  @override
  List<UniqueKey?> get allKeys => _keys.toList();

  IBackgroundMemoryStorage._() {
    workManager.initialize(callbackDispatcher);

    workManager.registerOneOffTask(
      allObjectsTaskKey,
      'allObjects',
      constraints: Constraints(
        requiresStorageNotLow: true,
        networkType: NetworkType.not_required,
      ),
    );

    workManager.registerOneOffTask(
      capsuleTaskKey,
      'capsule',
      constraints: Constraints(
        requiresStorageNotLow: true,
        networkType: NetworkType.not_required,
      ),
      inputData: {
        'key': 12,
      },
    );
  }

  @override
  Future<Iterable<Value?>> get allObjects async {
    var objects = <Value?>[];

    for (var key in allKeys) {
      objects.add(await object(key));
    }

    return Future.value(objects);
  }

  Future<MemoryCapsule?> capsule({UniqueKey? forKey}) async {
    inputData = {'capsuleKey0': forKey.toString()};

    late MemoryCapsule? capsule;

    final preferences = await SharedPreferences.getInstance();
    final capsuleJson = preferences.getString(forKey.toString());
    capsule = MemoryCapsule.fromJson(json.decode(capsuleJson ?? '{}'));

    return Future.value(capsule);
  }

  @override
  Future<Entry<Value>?> entry(UniqueKey key) async {
    inputData = {'entryKey0': key};

    late MemoryCapsule? capsule;

    capsule = await this.capsule(forKey: key);

    return Entry(capsule?.object, expiry: capsule?.expiry);
  }

  @override
  Future<bool> removeAll() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.clear();
  }

  @override
  Future<void> removeExpiredObjects() async {
    final allKeys = _keys;
    for (var key in allKeys) {
      removeObjectIfExpired(key: key);
    }
  }

  Future<void> removeObjectIfExpired({required UniqueKey key}) async {
    inputData = {'removeObjectIfExpiredKey0': key};

    final capsule = await this.capsule(forKey: key);
    if (capsule?.expiry?.isExpired ?? true) {
      removeObject(key);
    }
  }

  @override
  Future<void> removeObject(UniqueKey key) async {
    inputData = {'removeObjectKey0': key};

    final preferences = await SharedPreferences.getInstance();
    preferences.remove(key.toString());
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
    extends IBackgroundMemoryStorage<Hashable, Value> {
  BackgroundMemoryStorage() : super._();
}
