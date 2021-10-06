import 'package:flutter/material.dart';
import 'package:learningflutter/model/todo.dart';
import 'package:learningflutter/screens/home.dart';
import 'package:learningflutter/screens/todo_item.dart';

class TodoAdd extends StatefulWidget {
  const TodoAdd({Key? key, required this.updateState}) : super(key: key);
  final Function updateState;
  @override
  _TodoAddState createState() => _TodoAddState();
}

class _TodoAddState extends State<TodoAdd> {
  TextEditingController titleController = TextEditingController();
  TextEditingController messageController = TextEditingController();

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
            controller: titleController,
            cursorHeight: 30,
            maxLines: 2,
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: TextField(
            controller: messageController,
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
              if (messageController.text.isEmpty) {
                validated = false;
                error = "Can't be empty";
              } else if (messageController.text.length > 300) {
                validated = false;
                error = "Too many haracters";
              } else {
                //add data in the list of type ToDo
                var messageValue = messageController.text;
                var titleValue = titleController.text; // ""

                DateTime dt = DateTime.now();

                String dateValue = '${dt.day}/${dt.month}/${dt.year}';

                ToDo value = ToDo(
                    date: dateValue, message: messageValue, title: titleValue);

                todo.add(value);

                messageController.clear();
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
