import 'package:flutter/material.dart';

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
