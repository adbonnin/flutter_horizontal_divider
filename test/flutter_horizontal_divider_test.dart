import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_horizontal_divider/flutter_horizontal_divider.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_horizontal_divider');

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
    expect(await FlutterHorizontalDivider.platformVersion, '42');
  });
}
