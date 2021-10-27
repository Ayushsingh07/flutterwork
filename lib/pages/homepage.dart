import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Mayank";

    return Scaffold(
      appBar: AppBar(title: Text('first app')),
      body: Center(
        child: Container(
          child: Text("welcome to  $days days of flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
