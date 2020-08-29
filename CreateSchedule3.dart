//Create short study schedule page
import 'dart:async';
import 'package:flutter/material.dart';

class CreateSchedule3 extends StatefulWidget {
  @override
  _CreateSchedule3State createState() => _CreateSchedule3State();
}

class _CreateSchedule3State extends State<CreateSchedule3> {
  TimeOfDay selectedbedTime =TimeOfDay.now();
  TimeOfDay selectedwakeTime =TimeOfDay.now();

  //bed time
  Future<Null> _selectbedTime(BuildContext context) async {
    final TimeOfDay pickbedTime = await showTimePicker(
        context: context,
        initialTime: selectedbedTime, builder: (BuildContext context, Widget child) {
      return MediaQuery(
        data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
        child: child,
      );});

    if (pickbedTime != null && pickbedTime != selectedbedTime )
      setState(() {
        selectedbedTime = pickbedTime;
      });
  }

  //wake up time
  Future<Null> _selectwakeTime(BuildContext context) async {
    final TimeOfDay pickwakeTime = await showTimePicker(
        context: context,
        initialTime: selectedwakeTime, builder: (BuildContext context, Widget child) {
      return MediaQuery(
        data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
        child: child,
      );});

    if (pickwakeTime != null && pickwakeTime != selectedwakeTime )
      setState(() {
        selectedwakeTime = pickwakeTime;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create a Custom Study Schedule",
            style: TextStyle(fontFamily: 'Acme')),
        backgroundColor: Colors.redAccent[400],
      ),
      body: Container (
          child: Column(
            children: [
              Text("Enter when you wake up and when you go to sleep:", style: TextStyle(fontFamily: 'Acme', color: Colors.redAccent[400])),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(icon: Icon(Icons.brightness_3), onPressed: () => _selectbedTime(context),),
                    Text(selectedbedTime.format(context)),
                    IconButton(icon: Icon(Icons.brightness_high), onPressed: () => _selectwakeTime(context),),
                    Text(selectedwakeTime.format(context)),
                  ],
                ),
              ),
            ],
          )
      )
    );
  }
}
