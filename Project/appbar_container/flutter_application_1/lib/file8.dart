import 'package:flutter/material.dart';

class File8 extends StatefulWidget {
  const File8({super.key});

  @override
  State<File8> createState() => _File8State();
}

class _File8State extends State<File8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hello',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 2),
          ),
        ),
      ),
    );
  }
}
