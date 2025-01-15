import 'package:flutter/material.dart';

class MyStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 200,
      color: Colors.cyan,
      child: Stack(
        children: [
          Container(
            width: 150,
            height: 150,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
