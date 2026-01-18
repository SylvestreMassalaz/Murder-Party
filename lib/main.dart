import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:murder_party/data/repositories/murder_repository.dart';
import 'package:murder_party/data/services/murder_rest_api.dart';
import 'package:murder_party/l10n/app_localizations.dart';
import 'package:murder_party/ui/home/view_models/home_view_model.dart';
import 'package:murder_party/ui/home/widgets/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final List<SingleChildWidget> providers = [
  Provider(create: (context) => const MurderRepository()),
  Provider(create: (context) => MurderRestApi()),
  ChangeNotifierProvider(
    create: (context) => HomeViewModel(murderRepository: context.read()),
  ),
  Provider(create: (context) => HomeScreen(viewModel: context.read())),
];

void main() {
  runApp(MultiProvider(providers: providers, child: const MyApp()));
}

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
  brightness: Brightness.light,
  textTheme: TextTheme(
    displayLarge: GoogleFonts.openSans(
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: GoogleFonts.openSans(
      fontSize: 24,
      fontWeight: FontWeight.normal,
    ),
    displaySmall: GoogleFonts.openSans(
      fontSize: 18,
      fontWeight: FontWeight.normal,
    ),
  ),
);

var darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.red,
    brightness: Brightness.dark,
  ),
  brightness: Brightness.dark,
  textTheme: TextTheme(
    displayLarge: GoogleFonts.openSans(
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: GoogleFonts.openSans(
      fontSize: 24,
      fontWeight: FontWeight.normal,
    ),
    displaySmall: GoogleFonts.openSans(
      fontSize: 18,
      fontWeight: FontWeight.normal,
    ),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Murder Party Companion',
      theme: theme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: context.read<HomeScreen>(),
    );
  }
}
