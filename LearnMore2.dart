//Learn more about long study schedules page

import 'package:flutter/material.dart';

class LearnMore2 extends StatefulWidget {
  @override
  _LearnMore2State createState() => _LearnMore2State();
}

class _LearnMore2State extends State<LearnMore2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn more about Long Study Schedules"),
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
