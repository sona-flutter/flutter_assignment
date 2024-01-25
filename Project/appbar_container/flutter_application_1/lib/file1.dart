import 'package:flutter/material.dart';

class File1 extends StatefulWidget {
  const File1({super.key});

  @override
  State<File1> createState() => _File1State();
}

class _File1State extends State<File1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'File ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.amber,
        actions: const [
          Icon(
            Icons.favorite_border,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          SizedBox(
            width: 12,
          ),
          // Spacer(),
          Icon(
            Icons.message,
            color: Colors.black,
          ),
          SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }
}
