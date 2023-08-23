import 'package:flutter/material.dart';

class LinkedDevices extends StatelessWidget {
  const LinkedDevices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linked Devices"),
      ),
      body: Center(
         child:Text(
            "Linked Devices",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            ),
      ),
    );
  }
}