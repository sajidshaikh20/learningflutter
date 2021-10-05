import 'package:flutter/material.dart';
import 'package:learningflutter/screens/home.dart';
import 'package:learningflutter/screens/todo_item.dart';

class TodoAdd extends StatefulWidget {
  const TodoAdd({Key? key, required this.updateState}) : super(key: key);
  final Function updateState;
  @override
  _TodoAddState createState() => _TodoAddState();
}

class _TodoAddState extends State<TodoAdd> {
  TextEditingController textEditingController = TextEditingController();

  bool validated = true;
  String error = "";
  int changescreen = 0;

  @override
  Widget build(BuildContext context) {
    print('add build called');

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: TextField(
            controller: textEditingController,
            cursorHeight: 30,
            maxLines: 6,
            minLines: 1,
            maxLength: 300,
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
                errorText: validated ? null : error,
                labelText: "To Do",
                labelStyle: TextStyle(fontSize: 17),
                hintText: "enter text ",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        Spacer(),
        ElevatedButton(
          style:
              ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 45)),
          onPressed: () {
            setState(() {
              if (textEditingController.text.isEmpty) {
                validated = false;
                error = "Can't be empty";
              } else if (textEditingController.text.length > 300) {
                validated = false;
                error = "Too many haracters";
              } else {
                todo.add(textEditingController.text);
                textEditingController.clear();
                validated = true;

                widget.updateState();
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
