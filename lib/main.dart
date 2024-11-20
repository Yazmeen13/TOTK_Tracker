import 'package:flutter/material.dart';
import 'package:totk_tracker/screens/tabs.dart';
import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 0, 128, 87), // const Color.fromARGB(255, 40, 28, 28), 
  surface: const Color.fromARGB(255, 28, 19, 19),
);

final theme = ThemeData().copyWith(
  scaffoldBackgroundColor: colorScheme.surface,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.ptSansTextTheme().copyWith(
    titleSmall: GoogleFonts.ptSans(
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.ptSans(
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.ptSans(
      fontWeight: FontWeight.bold,
    ),
  ),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TOTK Progress',
      theme: theme,
      home: const TabsScreen(),
      // home: const Text('hey girl'),
    );
  }
}