//Create long study schedule page

import 'package:flutter/material.dart';

class CreateSchedule2 extends StatefulWidget {
  @override
  _CreateSchedule2State createState() => _CreateSchedule2State();
}

class _CreateSchedule2State extends State<CreateSchedule2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Generate Long Study Schedule"),
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