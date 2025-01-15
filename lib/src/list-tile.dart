import 'package:flutter/material.dart';

class MyListTileWidget extends StatelessWidget {
  final List<Widget> myListTileContent = const [
    ListTile(
      title: Text(
        "Ahmad Mufid Risqi",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        "Flutter Developer",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      leading: CircleAvatar(),
      trailing: Text(
        "10:00 PM",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    ListTile(
      title: Text(
        "Contact 1",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        "Flutter Developer",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      leading: CircleAvatar(),
      trailing: Text(
        "12:00 PM",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    ListTile(
      title: Text(
        "Contact 2",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        "Flutter Developer",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      leading: CircleAvatar(),
      trailing: Text(
        "07:00 PM",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> myListTileWidget = List.generate(
        myListTileContent.length,
        (index) => Container(
              child: myListTileContent[index],
            ));

    return ListView(
      children: myListTileWidget,
    );
  }
}
