import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/CreateSchedule3.dart';
import 'package:smart_schedule_creator/homepage.dart';
import 'package:smart_schedule_creator/UnavailableTimes.dart';

class TaskRow3 extends StatefulWidget {

  final TimeOfDay bedtime;
  final TimeOfDay waketime;


  TaskRow3({
    Key key,
    @required this.bedtime,
    @required this.waketime,
  }) : super(key: key);

  @override
  _TaskRow3State createState() => _TaskRow3State();
}


class _TaskRow3State extends State<TaskRow3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Custom Study Schedule",
            style: TextStyle(fontFamily: 'Acme')),
        backgroundColor: Colors.redAccent[400],
      ),
    );
  }
}
