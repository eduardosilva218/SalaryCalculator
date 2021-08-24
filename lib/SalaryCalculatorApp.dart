import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class SalaryCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Salary calculator',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
          primarySwatch: Colors.grey,
          primaryColor: Colors.deepPurple,
          brightness: Brightness.dark,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white, primary: Colors.deepPurple))),
      themeMode: ThemeMode.dark,
      home: HomePage(title: 'Salary calculator'),
    );
  }
}
