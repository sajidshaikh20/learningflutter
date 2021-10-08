import 'package:flutter/material.dart';
import 'package:learningflutter/model/todo_model.dart';
import 'package:learningflutter/widgets/todo_card.dart';

class Items extends StatefulWidget {
  Items({Key? key}) : super(key: key);

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  List<TodoModel> data = <TodoModel>[
    TodoModel(
        date: '21 oct 2021',
        title: 'Tution',
        message: 'Resume submit kerna hai or tution jana hai.'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return TodoCard(
          modelObj: data[index],
        );
      },
    );
  }
}
