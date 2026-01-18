// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World!';

  @override
  String get appName => 'Murder Party Companion';

  @override
  String get recentSessions => 'Recent sessions';

  @override
  String get createNewMurderParty => 'Create new murder party';

  @override
  String get joinMurder => 'Join existing murder';

  @override
  String get player => 'Player';

  @override
  String get coordinator => 'Coordinator';

  @override
  String get noMurderText =>
      'No murder session could be found. You can either join an existing session or create your own';
}
