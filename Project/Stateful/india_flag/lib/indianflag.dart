import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int counter = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indian Flag"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        backgroundColor: Colors.blue.shade200,
        child: const Text(
          "Add",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              width: 20,
            ),
            (counter >= 0)
                ? Container(
                    height: 500,
                    width: 10,
                    color: Colors.black,
                  )
                : Container(),
            Column(
              children: [
                (counter >= 1)
                    ? Container(
                        height: 80,
                        width: 250,
                        color: Colors.orange,
                      )
                    : Container(),
                (counter >= 2)
                    ? Container(
                        height: 80,
                        width: 250,
                        color: Colors.white,
                        child: (counter >= 3)
                            ? Image.network(
                                "https://t3.ftcdn.net/jpg/03/11/13/46/240_F_311134651_RXMvbUB3h089Js0ODvuHrttmsON9Tpik.jpg")
                            : Container(),
                      )
                    : Container(),
                (counter >= 4)
                    ? Container(
                        height: 80,
                        width: 250,
                        color: Colors.green,
                      )
                    : Container(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
