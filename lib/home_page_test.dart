import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Aditya";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Car Khaana"),
      ),
       body: Center(
        child: Container(
         child: Text("Welcome to $days days of flutter $name"),
         ),
        ),
      drawer: Drawer(),
    );
  }
}