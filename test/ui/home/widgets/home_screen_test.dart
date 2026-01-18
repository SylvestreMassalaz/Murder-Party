import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:murder_party/domain/model/murder_party_session.dart';
import 'package:murder_party/domain/model/result.dart';
import 'package:murder_party/l10n/app_localizations.dart';
import 'package:murder_party/ui/home/view_models/home_view_model.dart';
import 'package:murder_party/ui/home/widgets/home_screen.dart';
import 'package:murder_party/ui/home/widgets/murder_session_list_item.dart';
import 'package:murder_party/ui/home/widgets/no_murder_sessions.dart';

@GenerateNiceMocks([MockSpec<HomeViewModel>()])
import 'home_screen_test.mocks.dart';

void main() {
  group('HomeScreen Widget', () {
    late MockHomeViewModel viewModel;
    late HomeScreen homeScreen;

    setUp(() {
      provideDummy(Result<List<MurderPartySession>>.ok([]));
      viewModel = MockHomeViewModel();
      homeScreen = HomeScreen(viewModel: viewModel);
    });

    testWidgets('should handle empty list of sessions', (tester) async {
      when(viewModel.murderPartySessions).thenReturn(UnmodifiableListView([]));

      await tester.pumpWidget(
        MaterialApp(
          locale: Locale('en'),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: Directionality(textDirection: .ltr, child: homeScreen),
        ),
      );

      expect(find.byType(NoMurderSessions), findsOneWidget);
    });

    testWidgets('should handle when there is murder sessions', (tester) async {
      when(viewModel.murderPartySessions).thenReturn(
        UnmodifiableListView([
          MurderPartySession(
            id: "AAAAA",
            name: "Test session #1",
            sessionType: .coordinator,
          ),
          MurderPartySession(
            id: "BBBBB",
            name: "Test session #2",
            sessionType: .player,
          ),
        ]),
      );

      await tester.pumpWidget(
        MaterialApp(
          locale: Locale('en'),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: Directionality(textDirection: .ltr, child: homeScreen),
        ),
      );

      expect(find.byType(MurderSessionListItem), findsExactly(2));
    });
  });
}
