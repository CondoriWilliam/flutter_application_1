import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final String user = '';
  final String password = '';

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App',
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'OpenSans',
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white, // Color del texto
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        textTheme: const TextTheme(
          titleSmall: TextStyle(color: Colors.white),
          labelLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          labelStyle: TextStyle(color: Colors.white),
        ),
      ),
      home: LoginScrren(userLogin: user, passwordLogin: password),
    );
  }
}
