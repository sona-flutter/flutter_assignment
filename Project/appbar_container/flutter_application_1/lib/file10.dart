import 'package:flutter/material.dart';

class File10 extends StatefulWidget {
  const File10({super.key});

  @override
  State<File10> createState() => _File10State();
}

class _File10State extends State<File10> {
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
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
