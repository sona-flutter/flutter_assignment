import 'package:flutter/material.dart';

void main() {
  runApp(File());
}

class File extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tiranga Flag'),
        ),
        body: Center(
          child: TirangaFlag(),
        ),
      ),
    );
  }
}

class TirangaFlag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: 40.0, // Adjust the width of the flagpole
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 300.0,
            width:
                10.0, // Adjust the width of the first vertical stripe (saffron)
            color: Colors.orange,
          ),
          Container(
            height: 300.0,
            width:
                10.0, // Adjust the width of the second vertical stripe (white)
            color: Colors.white,
            child: Center(
              child: _centerCircle(),
            ),
          ),
          Container(
            height: 300.0,
            width:
                10.0, // Adjust the width of the third vertical stripe (green)
            color: Colors.green,
          ),
          Container(
            height: 300.0,
            width: 10.0, // Adjust the width of the flagpole
            color: Colors.brown, // Color of the flagpole
          ),
        ],
      ),
    );
  }

  Widget _centerCircle() {
    return Container(
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.indigo,
      ),
    );
  }
}
