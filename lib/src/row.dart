import 'package:flutter/material.dart';

class MyRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 200,
      color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: const Center(
              child: Text("1"),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
            child: const Center(
              child: Text("2"),
            ),
          )
        ],
      ),
    );
  }
}
