import 'package:flutter/material.dart';
import 'package:learningflutter/screens/add.dart';
import 'package:learningflutter/screens/items.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo'),
        centerTitle: true,
      ),
      body: (myIndex == 0) ? Items() : Add(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index; //bottome index got updated
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'my todo',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add todo'),
        ],
      ),
    );
  }
}
