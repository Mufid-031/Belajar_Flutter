import 'package:flutter/material.dart';
import './src/text.dart';
import './src/column.dart';
import './src/row.dart';
import './src/stack.dart';
import './src/list-view.dart';
import './src/list-generate.dart';
import './src/list-tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          
          backgroundColor: Colors.black87,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
            )
          ],
        ),
        body: MyListTileWidget(),
        // body: ListView(
        //   children: [
        //     // MyTextWidget(),
        //     // MyColumnWidget(),
        //     // MyRowWidget(),
        //     // MyStackWidget(),
        //     // MyListViewWidget(),
        //     // MyListGenerateWidget(),
        //   ],
        // ),
      ),
    );
  }
}
