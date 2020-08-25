//Learn more about custom study schedules page

import 'package:flutter/material.dart';

class LearnMore3 extends StatefulWidget {
  @override
  _LearnMore3State createState() => _LearnMore3State();
}

class _LearnMore3State extends State<LearnMore3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn more about Custom Study Schedules"),
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
