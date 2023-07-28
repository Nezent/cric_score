import 'package:cric_score/views/constant.dart';
import 'package:cric_score/views/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cric Score',
      theme: ThemeData(
        fontFamily: 'REM',
        colorScheme: ColorScheme.fromSeed(seedColor: Palette.primary),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
