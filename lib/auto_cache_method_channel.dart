import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'auto_cache_platform_interface.dart';

/// An implementation of [AutoCachePlatform] that uses method channels.
class MethodChannelAutoCache extends AutoCachePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('auto_cache');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
