import 'package:flutter/material.dart';

class MyListViewWidget extends StatelessWidget {
  final List<Color> colors = [Colors.red, Colors.green, Colors.yellow];

  MyListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 200,
      color: Colors.cyan,
      child: ListView.separated(
        // separator bisa diakses jika menggunakan ListView.separated
        // memberi jarak antar item
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.black,
          );
        },
        // perulangan menggunakan ListView.separated / ListView.builder
        scrollDirection: Axis.horizontal,
        itemCount: colors.length, // banyak item yang ditampilkan
        itemBuilder: (context, index) {
          return Container(
            width: 200,
            height: 200,
            color: colors[index],
          );
        },
      ),
    );
  }
}
