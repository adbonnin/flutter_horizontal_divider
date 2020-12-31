import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_horizontal_divider/flutter_horizontal_divider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const key = Key('key');

  testWidgets('Should render the widget', (WidgetTester tester) async {
    // given:
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: HorizontalDivider(
            key: key,
            height: 5.0,
          ),
        ),
      ),
    );

    // expect:
    expect(find.byKey(key), findsOneWidget);
  });
}
