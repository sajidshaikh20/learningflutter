import 'package:flutter/material.dart';
import 'package:learningflutter/screens/home.dart';
import 'package:learningflutter/widgets/card_item.dart';

class TodoItem extends StatefulWidget {
  TodoItem({Key? key}) : super(key: key);

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  @override
  Widget build(BuildContext context) {
    print('item build called');

    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: todo.length,
            itemBuilder: (context, index) {
              return CardItem(
                message: todo[todo.length - 1 - index],
              );
            },
          ))
        ],
      ),
    );
  }
}
