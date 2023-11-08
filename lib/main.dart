import 'package:flutter/material.dart';

import 'package:expense_tracker_app/expenses.dart';

var KColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 56, 181));

var KDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 5, 99, 125));
void main() {
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: KDarkColorScheme,
      cardTheme: const CardTheme().copyWith(
        color: KDarkColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: KDarkColorScheme.primaryContainer,
          foregroundColor: KDarkColorScheme.onPrimaryContainer,
        ),
      ),
    ),
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: KColorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: KColorScheme.onPrimaryContainer,
        foregroundColor: KColorScheme.primaryContainer,
      ),
      cardTheme: const CardTheme().copyWith(
        color: KColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: KColorScheme.primaryContainer,
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: KColorScheme.onSecondaryContainer,
              fontSize: 16,
            ),
          ),
    ),
    themeMode: ThemeMode.system,
    home: const Expenses(),
  ));
}
