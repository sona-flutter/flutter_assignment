// file5

import 'package:flutter/material.dart';

class File5 extends StatefulWidget {
  const File5({super.key});

  @override
  State<File5> createState() => _File5State();
}

class _File5State extends State<File5> {
  @override
  Widget build(BuildContext constex) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hello',
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfs-ixq_bcEjWIvJgzuabZDU4JqB4A7-4xbvvwHy_-KhrDny6EMezm8NLBmQ&s",
              width: 150,
              height: 150,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfs-ixq_bcEjWIvJgzuabZDU4JqB4A7-4xbvvwHy_-KhrDny6EMezm8NLBmQ&s",
              width: 150,
              height: 150,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfs-ixq_bcEjWIvJgzuabZDU4JqB4A7-4xbvvwHy_-KhrDny6EMezm8NLBmQ&s",
              width: 150,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
