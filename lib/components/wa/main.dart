import 'package:belajar_flutter/components/WA/header.dart';
import 'package:belajar_flutter/components/wa/bottom-navigation-bar.dart';
import 'package:belajar_flutter/components/wa/contact-item.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

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
        appBar: MyAppBar(),
        body: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) => SizedBox(
                  width: 200,
                  height: 100,
                  child: MyContactItem(
                    imageUrl: "https://picsum.photos/id/$index/200/300",
                    title: faker.person.name(),
                    subtitle: faker.lorem.sentence(),
                    trailing: faker.date.dateTime().hour.toString(),
                  ),
                )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.greenAccent,
          child: const Icon(Icons.message_sharp),
        ),
        bottomNavigationBar: MyBottomNavigationBarState(),
      ),
    );
  }
}
