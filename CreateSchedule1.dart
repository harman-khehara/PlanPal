//Create short study schedule page

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/TaskRow1.dart';

class CreateSchedule1 extends StatefulWidget {
  @override
  _CreateSchedule1State createState() => _CreateSchedule1State();
}

class _CreateSchedule1State extends State<CreateSchedule1> {
  String dropdownValue = 'One';
  int count = 1;
  int hoursTotal = 0;
  bool enabled = true;

  @override
  Widget build(BuildContext context) {
    List<TaskRow> _tasks = new List.generate(count, (int i) => new TaskRow());

    for (var i = 0; i < _tasks.length; i++) {
      hoursTotal = hoursTotal + int.parse(_tasks[i].time);
    }
    if (hoursTotal >= 12) {
      enabled = false;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Create a Short Study Schedule",
            style: TextStyle(
              fontFamily: 'Acme',
            )),
        backgroundColor: Colors.redAccent[400],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewTask,
        backgroundColor: Colors.redAccent[400],
        child: Icon(Icons.add),
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
                child: new ListView(
                  children: _tasks,
                  scrollDirection: Axis.vertical,
                ),
              )),
        )
      ])),
    );
  }

  void _addNewTask() {
    if (enabled) {
      setState(() {
        count = count + 1;
      });
    } else {
      setState(() {
        null;
      });
    }
    ;
  }
}
