//Generate the short study schedule

import 'package:flutter/material.dart';

class GenerateSchedule1 extends StatefulWidget {
  final List tasks;
  final List times;
  final List unavailableTimes;
  final DateTime date;
  final TimeOfDay startTime;

  GenerateSchedule1({
    Key key,
    @required this.tasks,
    @required this.times,
    @required this.unavailableTimes,
    @required this.date,
    @required this.startTime,
  }) : super(key: key);

  @override
  _GenerateSchedule1State createState() => _GenerateSchedule1State();
}

class _GenerateSchedule1State extends State<GenerateSchedule1> {

  @override
  Widget build(BuildContext context) {
    print(widget.tasks);
    print(widget.times);
    print(widget.unavailableTimes);
    print(widget.date);
    print(widget.startTime);
    return Scaffold(
      appBar: AppBar(
        title: Text("Generated Short Study Schedule",
            style: TextStyle(fontFamily: 'Acme')),
        backgroundColor: Colors.redAccent[400],
      ),
    );
  }
}
