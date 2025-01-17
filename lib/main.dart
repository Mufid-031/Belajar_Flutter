import 'package:flutter/material.dart';
// import './src/text.dart';
// import './src/column.dart';
// import './src/row.dart';
// import './src/stack.dart';
// import './src/list-view.dart';
// import './src/list-generate.dart';
// import './src/list-tile.dart';
// import './src/image.dart';
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
        body: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) => SizedBox(
                  width: 200,
                  height: 100,
                  child: ContactItem(
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

class MyBottomNavigationBarState extends StatefulWidget {
  @override
  _MyBottomNavigationBar createState() => _MyBottomNavigationBar();
}

class _MyBottomNavigationBar extends State<MyBottomNavigationBarState> {
  int _currentIndex = 0;

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> labels = ["Chats", "Groups", "Calls"];
    final List<IconData> icons = [
      Icons.message_outlined,
      Icons.group_outlined,
      Icons.call
    ];
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black87,
        items: List.generate(
            labels.length,
            (index) => BottomNavigationBarItem(
                  label: labels[index],
                  icon: Icon(icons[index]),
                )));
  }
}

class ContactItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String trailing;

  ContactItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
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
      trailing: Text(
        "$trailing:00",
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
