import 'package:flutter_test/flutter_test.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:fitment/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(App());

    expect(find.text('categories'), findsOneWidget);
    
    await tester.tap(find.byIcon(EvaIcons.plusOutline));
  });
}
