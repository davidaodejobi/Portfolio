import 'package:flutter/material.dart';

import 'screens/main_screen.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: PortfolioTheme.lightFlexTheme,
      darkTheme: PortfolioTheme.darkFlexTheme,
      themeMode: ThemeMode.light,
      home: const MainScreen(),
    );
  }
}
