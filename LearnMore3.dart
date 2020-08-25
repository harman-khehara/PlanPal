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
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text(
            "Custom schedules offer these features:",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue[600],
              ),
          ),
            Text(
              "✓ Input for bedtime and morning times",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            Text(
              "✓ Blocking certain parts of the day/week for unavailability",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            Text(
              "✓ Input for personalized tasks with self-stated time requirements",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            Text(
              "✓ Modification of a generated schedule",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
            )
            ),
        ] // Children
      ),
    );
  }
}
