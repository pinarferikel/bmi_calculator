import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          //birden fazla slider'ımız varsa ve hepsini aynı yapmak istiyorsak
          //buraya yapıştır yapmamız gerek!!
          primaryColor: const Color(0XFF0A0E21),
          scaffoldBackgroundColor: const Color(0XFF0A0E21),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => InputPage(),
          '/calculate': (context) => const ResultsPage(),
        });
  }
}
