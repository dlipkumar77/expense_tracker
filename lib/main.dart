import 'package:flutter/material.dart';
import './widget/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

void main() {
  runApp(MaterialApp(
      // theme: ThemeData(
      //   useMaterial3: true,
      // ),
      theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: AppBarTheme(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
          ),
          cardTheme: CardTheme().copyWith(
            color: kColorScheme.secondaryContainer,
            margin: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer,
            ),
          ),
          textTheme: TextTheme().copyWith(
            titleLarge: TextStyle(
              //color: kColorScheme.onSecondaryContainer,
              color: Colors.deepPurple,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )),

      //theme: ThemeData(colorScheme: kColorScheme),
      home: Expenses()));
}
