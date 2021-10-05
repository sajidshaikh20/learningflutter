import 'package:flutter/material.dart';
import 'package:learningflutter/screens/home.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      // shadowColor: Colors.purple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              child: Text('5 Oct 2021'),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  message,
                  style: TextStyle(fontSize: 17.0),
                ),
              ),
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Update'),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Delete"),
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
