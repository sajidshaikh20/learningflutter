import 'package:flutter/material.dart';
import 'package:learningflutter/model/todo_model.dart';

class TodoCard extends StatelessWidget {
  TodoCard({Key? key, required this.modelObj}) : super(key: key);

  TodoModel modelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                modelObj.date,
                style: TextStyle(color: Colors.black38),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              modelObj.title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              maxLines: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(modelObj.message)
          ],
        ),
      ),
    );
  }
}
