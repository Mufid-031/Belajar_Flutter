import 'package:flutter/material.dart';
// import './src/text.dart';
// import './src/column.dart';
// import './src/row.dart';
// import './src/stack.dart';
// import './src/list-view.dart';
// import './src/list-generate.dart';
// import './src/list-tile.dart';
// import './src/image.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}


class _MyApp extends State<MyApp> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
            "$_counter",
            style: const TextStyle(
              fontSize: 50,
            )
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}