import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:coding_challenge/main.dart' as app;

void main() {
  group('App Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets('App Testing', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      var primaryButton = find.byKey(Key('dark'));
      var secondaryButton = find.byKey(Key('light'));
      var floatingButton = find.byKey(Key('select_theme'));
      var backButton = find.byKey(Key('back'));
      var primaryScroll = find.byKey(Key('main_scroll'));
      var secondaryScroll = find.byKey(Key('details_scroll'));
      var tab = find.byKey(Key('details_tab'));

      var tile = find.byKey(Key('item_4_tile'));

      // click dark mode button
      await tester.tap(primaryButton);
      await tester.pumpAndSettle();

      // scroll, drag and drop item
      await tester.drag(primaryScroll, Offset(0.0, -600));
      await tester.pumpAndSettle();
      await tester.timedDrag(tile, Offset(0.0, -80), Duration(seconds: 3));
      await tester.pumpAndSettle();

      // navigate to details view
      await tester.tap(tile);
      await tester.pumpAndSettle();

      // details view scroll
      await tester.timedDrag(
          secondaryScroll, Offset(0.0, -600), Duration(seconds: 3));
      await tester.pumpAndSettle();

      // details tab
      await tester.tap(tab);
      await tester.pumpAndSettle();

      // back to main screen
      await tester.tap(backButton);
      await tester.pumpAndSettle();

      // click theme selection button
      await tester.tap(floatingButton);
      await tester.pumpAndSettle();

      // click light mode button
      await tester.tap(secondaryButton);
      await tester.pumpAndSettle();

      // scroll main page
      await tester.drag(primaryScroll, Offset(0.0, -600));
      await tester.pumpAndSettle();
    });
  });
}
