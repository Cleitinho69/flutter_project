import 'package:flutter/material.dart';

main() {
  runApp(const App(title: 'Hello World'));
}

class App extends StatelessWidget {
  final String title;

  const App({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Container(
        child: Center(
          child: Text(title, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
