import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals/screens/tabs.dart'; // TabsScreen'i import et

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme().copyWith(
    headlineMedium: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white, // Sabit renk ekledik, görünürlüğü garantilemek için
    ),
    headlineLarge: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      color: Colors.white, // Sabit renk ekledik
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
      theme: theme,
      home: const TabsScreen(), // CategoriesScreen yerine TabsScreen
    );
  }
}
