import 'package:flutter/material.dart';

class File1 extends StatelessWidget {
  const File1({super.key});
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
            height: 200,
            width: 200,
            color: Colors.red,
          ),
        ));
  }
}
