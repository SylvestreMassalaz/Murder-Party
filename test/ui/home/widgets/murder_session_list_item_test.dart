import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:murder_party/domain/model/murder_party_session.dart';
import 'package:murder_party/l10n/app_localizations.dart';
import 'package:murder_party/ui/home/widgets/murder_session_list_item.dart';

void main() {
  group('MurderSessionListItem Widget', () {
    testWidgets('Should display properly when type is coordinator', (
      tester,
    ) async {
      const session = MurderPartySession(
        id: 'AAAAA',
        name: 'Test session',
        sessionType: .coordinator,
      );
      const widget = MurderSessionListItem(murderPartySession: session);

      await tester.pumpWidget(
        MaterialApp(
          locale: Locale('en'),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: Directionality(
            textDirection: .ltr,
            child: Scaffold(body: widget),
          ),
        ),
      );

      expect(find.text('Test session'), findsOne);
      expect(find.text('Coordinator'), findsOne);
    });

    testWidgets('Should display properly when type is player', (tester) async {
      const session = MurderPartySession(
        id: 'AAAAA',
        name: 'Test session',
        sessionType: .player,
      );
      const widget = MurderSessionListItem(murderPartySession: session);

      await tester.pumpWidget(
        MaterialApp(
          locale: Locale('en'),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: Directionality(
            textDirection: .ltr,
            child: Scaffold(body: widget),
          ),
        ),
      );

      expect(find.text('Test session'), findsOne);
      expect(find.text('Player'), findsOne);
    });
  });
}
