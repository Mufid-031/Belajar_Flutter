import 'package:flutter/material.dart';
import './src/text.dart';
import './src/column.dart';
import './src/row.dart';
import './src/stack.dart';
import './src/list-view.dart';
import './src/list-generate.dart';
import './src/list-tile.dart';
import './src/image.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = Faker();

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
        body: ListView(
          children: [
            ContactItem(imageUrl: "images/anby1.png", title: "Anby Demara", subtitle: "Status Tersedia",),
            ContactItem(imageUrl: "images/anby1.png", title: "Anby Demara", subtitle: "Status Tersedia",),
            ContactItem(imageUrl: "images/anby1.png", title: "Anby Demara", subtitle: "Status Tersedia",),
            ContactItem(imageUrl: "images/anby1.png", title: "Anby Demara", subtitle: "Status Tersedia",),
          ],
        ),
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  ContactItem({required this.imageUrl, required this.title, required this.subtitle,});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imageUrl),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
      trailing: const Text(
        "10.00 PM",
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
