import 'package:flutter/material.dart';

class StarredMessages extends StatelessWidget {
  const StarredMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Starred Messages"),
      ),
      body: Center(
         child:Text(
            "Starred Messages",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            ),
      ),
    );
  }
}