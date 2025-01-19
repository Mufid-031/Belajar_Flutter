import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "name": "Ahmad Mufid Risqi",
      "age": 20,
      "colors": ["white", "green", "black"],
    },
    {
      "name": "Imam",
      "age": 20,
      "colors": ["red", "blue", "black"],
    },
    {
      "name": "Ridho",
      "age": 20,
      "colors": ["orange", "white", "blue"],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("ID Apps"),
          ),
        ),
        body: ListView(
          children: myList.map((e) {
            List<String> myColors = e["colors"];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.black,
                        ),
                        Column(
                          children: [
                            Text(e["name"]),
                            Text(e["age"].toString()),
                          ],
                        )
                      ],
                    ),
                    // ListView(
                    //     scrollDirection: Axis.horizontal,
                    //     children: myColors
                    //         .map((e) => Container(
                    //               width: 100,
                    //               height: 50,
                    //               color: Color(int.parse(e, radix: 16)),
                    //             ))
                    //         .toList())
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
