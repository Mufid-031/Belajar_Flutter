import 'package:flutter/material.dart';
import './src/text.dart';
import './src/column.dart';
import './src/row.dart';
import './src/stack.dart';
import './src/list-view.dart';
import './src/list-generate.dart';
import './src/list-tile.dart';
import './src/image.dart';

void main() {
  runApp(const MyApp());
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
        // body: MyListTileWidget(),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black,
            );
          },
          itemBuilder: (context, index) => const MyImageWidget(),
          itemCount: 10,
          // children: const [
          //   // MyTextWidget(),
          //   // MyColumnWidget(),
          //   // MyRowWidget(),
          //   // MyStackWidget(),
          //   // MyListViewWidget(),
          //   // MyListGenerateWidget(),
          //   MyImageWidget(),
          //   MyImageWidget(),
          //   MyImageWidget(),
          //   MyImageWidget(),
          // ],
        ),
      ),
    );
  }
}
