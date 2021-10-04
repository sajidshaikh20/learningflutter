import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  TodoItem({Key? key}) : super(key: key);

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  @override
  Widget build(BuildContext context) {
    return Text("this is text");
    //  ListView.builder(
    // itemCount: item.length, itemBuilder: (context, index) {});
  }
}
