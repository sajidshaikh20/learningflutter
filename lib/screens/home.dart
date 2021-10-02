import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("To DO"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Save'),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    elevation: 2.0,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('This is my first todo'),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('submit'),
              ),
            ),
          ],
        ));
  }
}
