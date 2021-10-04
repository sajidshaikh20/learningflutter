import 'package:flutter/material.dart';
import 'package:learningflutter/screens/todo_add.dart';
import 'package:learningflutter/screens/todo_item.dart';
import 'package:learningflutter/widgets/card_item.dart';

List<String> messageData = <String>[];

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> messageData = <String>[];

  TextEditingController textEditingController = TextEditingController();
  int bottomIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To DO"),
        centerTitle: true, //to make title in center
      ),

      //todo_add & todo_item

      body: (bottomIndex == 0) ? TodoItem() : TodoAdd(),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomIndex,
          onTap: (index) {
            print('this is $index');
            setState(() {
              bottomIndex = index;
            });
          },
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
                icon: Icon(Icons.list), label: 'my todo'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.add), label: 'add todo'),
          ]),
    );
  }
}
