//Learn more about short study schedules page

import 'package:flutter/material.dart';

class LearnMore1 extends StatefulWidget {
  @override
  _LearnMore1State createState() => _LearnMore1State();
}

class _LearnMore1State extends State<LearnMore1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn more about Short Study Schedules"),
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
