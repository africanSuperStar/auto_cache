import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:auto_cache/auto_cache_method_channel.dart';

void main() {
  MethodChannelAutoCache platform = MethodChannelAutoCache();
  const MethodChannel channel = MethodChannel('auto_cache');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
