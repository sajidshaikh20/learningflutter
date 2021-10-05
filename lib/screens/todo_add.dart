import 'package:flutter/material.dart';
import 'package:learningflutter/screens/home.dart';
import 'package:learningflutter/screens/todo_item.dart';

class TodoAdd extends StatefulWidget {
  const TodoAdd({Key? key}) : super(key: key);

  @override
  _TodoAddState createState() => _TodoAddState();
}

class _TodoAddState extends State<TodoAdd> {
  TextEditingController textEditingController = TextEditingController();
  List<String> todo = <String>[];
  bool validated = true;
  String error = "";
  int changescreen = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            controller: textEditingController,
            cursorHeight: 30,
            maxLines: 6,
            minLines: 1,
            maxLength: 300,
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
                errorText: validated ? null : error,
                labelText: "TO Do",
                hintText: "create todo",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(fixedSize: Size(400, 45)),
          onPressed: () {
            setState(() {
              if (textEditingController.text.isEmpty) {
                validated = false;
                error = "can't be empty";
              } else if (textEditingController.text.length > 300) {
                validated = false;
                error = "Too many haracters";
              } else {
                todo.add(textEditingController.text);
                textEditingController.clear();
                validated = true;
              }
            });
          },
          child: Text(
            "Save",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
