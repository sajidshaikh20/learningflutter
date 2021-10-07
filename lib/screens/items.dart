import 'package:flutter/material.dart';
import 'package:learningflutter/model/todo_model.dart';
import 'package:learningflutter/widgets/todo_card.dart';

class Items extends StatelessWidget {
  Items({Key? key}) : super(key: key);

  List<TodoModel> data = <TodoModel>[
    TodoModel(
        date: '21 oct 2021',
        title: 'this is my title',
        message: 'this is my message'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TodoCard(
          modelObj: data[index],
        );
      },
      itemCount: data.length,
    );
  }
}
