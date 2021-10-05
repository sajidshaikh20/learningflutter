import 'package:flutter/material.dart';
import 'package:learningflutter/screens/home.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white54,
      elevation: 2.0,
      shadowColor: Colors.purple,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(message),
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
                  child: Text("delete"),
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
