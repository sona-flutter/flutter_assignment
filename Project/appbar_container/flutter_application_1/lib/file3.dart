// file3

import 'package:flutter/material.dart';

class File3 extends StatefulWidget {
  const File3({super.key});

  @override
  State<File3> createState() => _File3State();
}

class _File3State extends State<File3> {
  @override
  Widget build(BuildContext constex) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'file3',
          ),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
            ],
          ),
        ));
  }
}
