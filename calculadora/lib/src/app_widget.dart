import 'package:calculadora/src/ui/views/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( colorScheme: const ColorScheme.dark(
        primary: Colors.green,
        secondary: Colors.lightBlueAccent
      ),
        useMaterial3: true,
       ),
      home: const HomePage(),
    );
  }
}