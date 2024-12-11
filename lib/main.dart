import 'package:flutter/material.dart';
import 'package:white_label/home/home.dart';
import 'package:white_label/theme.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const WhiteLabeledApp());
}

class WhiteLabeledApp extends StatelessWidget {
  const WhiteLabeledApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: AppDefaultColors.scaffoldGrey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'WhiteLabeledStaffing',
      theme: baseTheme(brightness: Brightness.light),
      darkTheme: baseTheme(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: const MyHomePage(),
    );
  }
}
