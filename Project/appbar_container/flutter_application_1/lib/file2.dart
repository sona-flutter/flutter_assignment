// file2
import 'package:flutter/material.dart';

class File2 extends StatefulWidget {
  const File2({super.key});

  @override
  State<File2> createState() => _File2State();
}

class _File2State extends State<File2> {
  @override
  Widget build(BuildContext constex) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'File2 ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.send,
            color: Colors.black,
          )
        ],
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
