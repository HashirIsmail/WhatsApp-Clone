import 'package:flutter/material.dart';

class NewBroadcast extends StatelessWidget {
  const NewBroadcast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Broadcast"),
      ),
      body: Center(
         child:Text(
            "New Broadcast",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            ),
      ),
    );
  }
}