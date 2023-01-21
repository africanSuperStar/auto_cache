import 'package:flutter_test/flutter_test.dart';
// import 'package:auto_cache/auto_cache.dart';
import 'package:auto_cache/auto_cache_platform_interface.dart';
import 'package:auto_cache/auto_cache_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAutoCachePlatform
    with MockPlatformInterfaceMixin
    implements AutoCachePlatform {
  // @override
  // Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AutoCachePlatform initialPlatform = AutoCachePlatform.instance;

  test('$MethodChannelAutoCache is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAutoCache>());
  });

  // test('getPlatformVersion', () async {
  //   AutoCache autoCachePlugin = AutoCache();
  //   MockAutoCachePlatform fakePlatform = MockAutoCachePlatform();
  //   AutoCachePlatform.instance = fakePlatform;

  //   expect(await autoCachePlugin.getPlatformVersion(), '42');
  // });
}
