// file4

import 'package:flutter/material.dart';

class File4 extends StatefulWidget {
  const File4({super.key});

  @override
  State<File4> createState() => _File4State();
}

class _File4State extends State<File4> {
  @override
  Widget build(BuildContext constex) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hello Core2Web',
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 360,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
