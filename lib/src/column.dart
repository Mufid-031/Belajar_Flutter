import 'package:flutter/material.dart';

class MyColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 300,
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
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
          ),
        ],
      ),
    );
  }
}
