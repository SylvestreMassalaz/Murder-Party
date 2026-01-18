// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get helloWorld => 'Bonjour, Monde!';

  @override
  String get appName => 'Murder party companion';

  @override
  String get recentSessions => 'Sessions récentes';

  @override
  String get createNewMurderParty => 'Créer une murder';

  @override
  String get joinMurder => 'Rejoindre une Murder existante';

  @override
  String get player => 'Joueur';

  @override
  String get coordinator => 'Organisateur';

  @override
  String get noMurderText =>
      'Aucune session enregistrée n\'a pu être trouvée. Vous pouvez soit rejoindre une session existante, soit créer la votre.';
}
