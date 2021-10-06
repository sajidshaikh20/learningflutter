import 'package:flutter/material.dart';
import 'package:learningflutter/model/todo.dart';
import 'package:learningflutter/screens/todo_add.dart';
import 'package:learningflutter/screens/todo_item.dart';

List<ToDo> todo = <ToDo>[];

class Home extends StatefulWidget {
  Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<String> messageData = <String>[];

  // TextEditingController textEditingController = TextEditingController();
  int bottomIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To DO"),
        centerTitle: true, //to make title in center
      ),

      //todo_add & todo_item

      body: (bottomIndex == 0)
          ? TodoItem()
          : TodoAdd(
              updateState: () => setState(() {
                    bottomIndex = 0;
                  })),

      bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.blueGrey,
          currentIndex: bottomIndex,
          onTap: (index) {
            // print('this is $index');
            setState(() {
              bottomIndex = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.brown,
              icon: Icon(Icons.list),
              label: 'My Todo',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Todo'),
            //  BottomNavigationBarItem(
            //   icon: Icon(Icons.settings),
            //   label: 'Settings',
            //   backgroundColor: Colors.pink,
            // ),
          ]),
    );
  }
}
