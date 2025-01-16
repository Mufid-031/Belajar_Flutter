import 'package:flutter/material.dart';

class MyListGenerateWidget extends StatelessWidget {
  const MyListGenerateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> myTextList = List.generate(
      5, 
      (index) => Text(
        "Hello $index",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      )
    );
    
    return Container(
      width: 100,
      height: 200,
      color: Colors.cyan,
      child: ListView(
        children: myTextList,
      ),
    );
  }
}
