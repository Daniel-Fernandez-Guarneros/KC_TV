import 'package:flutter/material.dart';
import 'package:kc_tv_app/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KC TV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: const Color.fromARGB(255, 179, 16, 4),
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 228, 21, 7)),
        textTheme: const TextTheme(
            headlineLarge: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: 'Helvetica'),
            bodyMedium: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Helvetica')),
        useMaterial3: true,
      ),
      home: const StartScreen(),
    );
  }
}
