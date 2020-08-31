import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/additionalInfo3.dart';

class CreateSchedule3 extends StatefulWidget {
  @override
  _CreateSchedule3State createState() => _CreateSchedule3State();
}

class _CreateSchedule3State extends State<CreateSchedule3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Create a Custom Study Schedule",
        style: TextStyle(
        fontFamily: 'Acme',
    )),
    backgroundColor: Colors.redAccent[400],
    ),
    );
  }
}