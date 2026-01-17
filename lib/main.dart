import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:murder_party/data/repositories/murder_repository.dart';
import 'package:murder_party/data/services/murder_rest_api.dart';
import 'package:murder_party/ui/home/view_models/home_view_model.dart';
import 'package:murder_party/ui/home/widgets/home_screen.dart';

void main() {
  runApp(const MyApp());
}

var font = GoogleFonts.openSans(fontSize: 32, fontWeight: FontWeight.bold);
var theme = ThemeData(
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
    const murderRepository = MurderRepository();
    var murderRestApi = MurderRestApi();
    final viewModel = HomeViewModel(murderRepository: murderRepository, murderRestApi: murderRestApi);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: HomeScreen(viewModel: viewModel),
    );
  }
}
