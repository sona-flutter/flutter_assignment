import 'package:flutter/material.dart';

class File3 extends StatelessWidget {
  const File3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Container App',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(
            left: 10,
            bottom: 10,
            right: 10,
            top: 10,
          ),
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}
