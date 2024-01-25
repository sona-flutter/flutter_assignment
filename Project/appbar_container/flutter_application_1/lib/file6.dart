// file5

import 'package:flutter/material.dart';

class File6 extends StatefulWidget {
  const File6({super.key});

  @override
  State<File6> createState() => _File6State();
}

class _File6State extends State<File6> {
  @override
  Widget build(BuildContext constex) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('file6'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(),
              Container(
                height: 200,
                width: 200,
                // padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                color: Colors.amber,
              ),
              Container(
                height: 200,
                width: 200,
                margin: const EdgeInsets.all(20),
                color: Colors.red,
              ),
              Container(
                height: 200,
                width: 200,
                margin: const EdgeInsets.all(20),
                color: Colors.black,
              ),
              Container(
                height: 200,
                width: 200,
                margin: const EdgeInsets.all(20),
                color: Colors.brown,
              ),
              Container(
                height: 200,
                width: 200,
                margin: const EdgeInsets.all(20),
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 200,
                margin: const EdgeInsets.all(20),
                color: Colors.deepOrange,
              ),
              Container(
                height: 200,
                width: 200,
                margin: const EdgeInsets.all(20),
                color: Colors.green,
              ),
              Container(
                height: 200,
                width: 200,
                margin: const EdgeInsets.all(20),
                color: Colors.pinkAccent,
              ),
              Container(
                height: 200,
                width: 200,
                margin: const EdgeInsets.all(20),
                color: Colors.yellow,
              ),
              Container(
                height: 200,
                width: 200,
                margin: const EdgeInsets.all(20),
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
