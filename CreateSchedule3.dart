//Create short study schedule page

import 'package:flutter/material.dart';

class CreateSchedule3 extends StatefulWidget {
  @override
  _CreateSchedule3State createState() => _CreateSchedule3State();
}

class _CreateSchedule3State extends State<CreateSchedule3> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create a Custom Study Schedule",
            style: TextStyle(fontFamily: 'Acme')),
        backgroundColor: Colors.redAccent[400],
      ),
      body: Form (
          key: _formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.topLeft,
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: "Enter a task", icon: Icon(Icons.assignment)), 
                )// Add 2 DropDownField for calendar limit, an interactive calendar for blocking off times
              ]
          )
      )
    );
  }
}