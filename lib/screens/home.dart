import 'package:flutter/material.dart';
import 'package:learningflutter/widgets/card_item.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> messageData = <String>[];

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("To DO"),
          centerTitle: true, //to make title in center
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment
              .end, // aligne item in end ( right side of screen for columns)
          children: [
            TextField(
              controller: textEditingController,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (textEditingController.text.isNotEmpty) {
                      messageData.add(
                          textEditingController.text); //added value in list

                      textEditingController.clear(); // clear value of textfield
                    }
                  });
                },
                child: const Text('Save'),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: messageData.length,
                itemBuilder: (BuildContext context, int index) => CardItem(
                  message: messageData[messageData.length - 1 - index],
                ),
              ),
            ),
          ],
        ));
  }
}
