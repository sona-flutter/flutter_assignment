import 'package:flutter/material.dart';

class File7 extends StatefulWidget {
  const File7({super.key});

  @override
  State<File7> createState() => _File7State();
}

class _File7State extends State<File7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'File 7',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrRMHThLy0_Kq7eU7AwuhDoOiI5yyIyQQARA&usqp=CAU",
                width: 150,
                height: 300,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrRMHThLy0_Kq7eU7AwuhDoOiI5yyIyQQARA&usqp=CAU",
                width: 150,
                height: 300,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrRMHThLy0_Kq7eU7AwuhDoOiI5yyIyQQARA&usqp=CAU",
                width: 150,
                height: 300,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrRMHThLy0_Kq7eU7AwuhDoOiI5yyIyQQARA&usqp=CAU",
                width: 150,
                height: 300,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrRMHThLy0_Kq7eU7AwuhDoOiI5yyIyQQARA&usqp=CAU",
                width: 150,
                height: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
