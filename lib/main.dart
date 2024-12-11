import 'package:flutter/material.dart';
import 'package:white_label/home.dart';
import 'package:white_label/theme.dart';

void main() {
  runApp(const WhiteLabeledApp());
}

class WhiteLabeledApp extends StatelessWidget {
  const WhiteLabeledApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhiteLabeledStaffing',
      theme: baseTheme(brightness: Brightness.light),
      darkTheme: baseTheme(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
