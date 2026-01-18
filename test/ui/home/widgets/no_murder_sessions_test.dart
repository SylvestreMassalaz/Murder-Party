import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:murder_party/ui/home/widgets/no_murder_sessions.dart';

void main() {
  group('NoMurderSessionWidget', () {
    testWidgets('Widget displays icon, text and two buttons', (tester) async {
      const widget = NoMurderSessions();
      await tester.pumpWidget(
        Directionality(textDirection: TextDirection.ltr, child: widget),
      );

      expect(
        find.text(
          'No murder session could be found. You can either join an existing session or create your own',
        ),
        findsOneWidget,
      );
      expect(find.byIcon(Icons.heart_broken), findsOneWidget);

      expect(find.bySubtype<FilledButton>(), findsExactly(2));
    });
  });
}
