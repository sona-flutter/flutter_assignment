import 'package:flutter/material.dart';

class File8 extends StatelessWidget {
  const File8({super.key});

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
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(color: Colors.blue, width: 5),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              gradient: const LinearGradient(
                stops: [0.3, 0.5],
                colors: [Colors.red, Colors.green],
              )),
        ),
      ),
    );
  }
}
