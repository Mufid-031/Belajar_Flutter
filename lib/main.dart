import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _counter = 0;
  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

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
          body: Row(
            children: [
              Center(
                child: Text("$_counter", style: const TextStyle(fontSize: 50)),
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: _decrementCounter,
                    child: const Icon(Icons.remove),
                  ),
                  TextButton(
                    onPressed: _incrementCounter,
                    child: const Icon(Icons.add),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
