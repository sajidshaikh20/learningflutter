import 'package:flutter/material.dart';
import 'package:learningflutter/screens/home.dart';
import 'package:learningflutter/widgets/card_item.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: messageData.length,
            itemBuilder: (context, index) {
              return CardItem(
                message: messageData[index],
              );
            },
          ))
        ],
      ),
    );
  }
}
