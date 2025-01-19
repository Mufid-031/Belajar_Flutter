import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Flutter"),
        ),
        body: Center(
          child: Text(
            // DateTime(2021).toString(), // year, month, day, hour, minute, second
            DateTime.now().toString(), // hari ini
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
