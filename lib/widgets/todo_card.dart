import 'package:flutter/material.dart';
import 'package:learningflutter/model/todo_model.dart';

class TodoCard extends StatefulWidget {
  TodoCard({Key? key, required this.modelObj}) : super(key: key);

  TodoModel modelObj;

  @override
  _TodoCardState createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.modelObj.title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  maxLines: 2,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    widget.modelObj.date,
                    style: TextStyle(color: Colors.black38),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.modelObj.message * 3,
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                IconButton(onPressed: () {}, icon: Icon(Icons.delete))
              ],
            )
          ],
        ),
      ),
    );
  }
}
// dfgf