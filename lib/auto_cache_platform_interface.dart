import 'package:auto_cache/src/storage/background/background_memory_storage.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'auto_cache_method_channel.dart';

abstract class AutoCachePlatform extends PlatformInterface {
  /// Constructs a AutoCachePlatform.
  AutoCachePlatform() : super(token: _token);

  static final Object _token = Object();

  static AutoCachePlatform _instance = MethodChannelAutoCache();

  static final BackgroundMemoryStorage _background = BackgroundMemoryStorage();

  /// The default instance of [AutoCachePlatform] to use.
  ///
  /// Defaults to [MethodChannelAutoCache].
  static AutoCachePlatform get instance => _instance;

  /// The background processing instance of [AutoCachePlatform] to use.
  ///
  /// Defaults to [BackgroundMemoryStorage].
  static BackgroundMemoryStorage get background => _background;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AutoCachePlatform] when
  /// they register themselves.
  static set instance(AutoCachePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }
}
