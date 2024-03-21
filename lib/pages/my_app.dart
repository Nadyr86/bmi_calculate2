import 'package:bmi_calculate/pages/bmi_page.dart';
import 'package:bmi_calculate/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme(),
      home: const BmiPage(),
    );
  }
}
