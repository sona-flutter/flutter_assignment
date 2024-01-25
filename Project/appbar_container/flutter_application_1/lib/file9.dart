import 'package:flutter/material.dart';

class File9 extends StatefulWidget {
  const File9({super.key});

  @override
  State<File9> createState() => _File9State();
}

class _File9State extends State<File9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rounded Corner Border'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(20.0), // Set the border radius here
            border: Border.all(
              color: Colors.red, // Set the border color here
              width: 2.0, // Set the border width here
            ),
          ),
        ),
      ),
    );
  }
}
