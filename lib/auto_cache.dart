
import 'auto_cache_platform_interface.dart';

class AutoCache {
  Future<String?> getPlatformVersion() {
    return AutoCachePlatform.instance.getPlatformVersion();
  }
}
