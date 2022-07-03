import 'package:flutter/material.dart';
class UsrHome extends StatelessWidget {
 // const UsrHome ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Rement',
               style:TextStyle(color: Colors.black),
            ),

            Row(
              children: [
                Icon(Icons.add),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.add_alert_rounded),
                ),
                Icon(Icons.settings),
              ],
            )

          ],
        ),
      ),
      body:  Column(

      ),
    );
  }
}
