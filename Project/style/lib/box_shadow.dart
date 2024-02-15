import 'package:flutter/material.dart';

class File7 extends StatelessWidget {
  const File7({super.key});

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
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.blue, width: 5),
            boxShadow: const [
              BoxShadow(
                  color: Colors.purple, offset: Offset(30, 30), blurRadius: 8),
              BoxShadow(
                  color: Colors.red, offset: Offset(20, 20), blurRadius: 8),
              BoxShadow(
                  color: Colors.green, offset: Offset(10, 10), blurRadius: 8),
            ],
          ),
        ),
      ),
    );
  }
}
