//Create long study schedule page

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateSchedule2 extends StatefulWidget {
  @override
  _CreateSchedule2State createState() => _CreateSchedule2State();
}

class _CreateSchedule2State extends State<CreateSchedule2> {
  final _formKey = GlobalKey<FormState>();
  String dropdownValue = 'One';
  int count = 1;
  int hoursTotal = 0;
  bool enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create a Long Study Schedule",
              style: TextStyle(fontFamily: 'Acme')),
          backgroundColor: Colors.redAccent[400],
        ),
        body: Center(
            child: Column(children: [
              Expanded(
                child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Colors.blueGrey,
                      child: Container(
                      margin: EdgeInsets.only(top: 20.0, left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text('Enter the time you wake up:'),
                      ]
                    )
                ))))]))
    );
  }
}
