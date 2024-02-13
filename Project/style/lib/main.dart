import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                stops: [0.3, 0.5],
                colors: [
                  Colors.orange,
                  // Colors.white,
                  Colors.green,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
