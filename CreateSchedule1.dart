//Create short study schedule page

import 'package:flutter/material.dart';

class CreateSchedule1 extends StatefulWidget {
  @override
  _CreateSchedule1State createState() => _CreateSchedule1State();
}

class _CreateSchedule1State extends State<CreateSchedule1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Generate Short Study Schedule"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
