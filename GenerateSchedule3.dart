import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/CreateSchedule3.dart';
import 'package:smart_schedule_creator/homepage.dart';

class GenerateSchedule3 extends StatefulWidget {

  final List unavTimesCustom;
  final TimeOfDay bedtime;
  final TimeOfDay waketime;


  GenerateSchedule3({
    Key key,
    @required this.unavTimesCustom,
    @required this.bedtime,
    @required this.waketime,
  }) : super(key: key);

  @override
  _GenerateSchedule3State createState() => _GenerateSchedule3State();
}


class _GenerateSchedule3State extends State<GenerateSchedule3> {
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
