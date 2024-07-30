import 'package:flutter/material.dart';
import 'package:mac_poc/main_layout.dart';

import 'constants/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poc Application Cross Plateforme',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        brightness: Brightness.dark,
      ),
      home: const MainLayout(),
    );
  }
}
