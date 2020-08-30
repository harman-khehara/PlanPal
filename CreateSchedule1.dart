//Create short study schedule page

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/TaskRow1.dart';
import 'package:smart_schedule_creator/additionalInfo1.dart';
import 'package:flutter/material.dart';


class CreateSchedule1 extends StatefulWidget {
  @override
  _CreateSchedule1State createState() => _CreateSchedule1State();
}

class _CreateSchedule1State extends State<CreateSchedule1> {
  int count = 1;
  List times = [];
  List tasks = [];

  @override
  Widget build(BuildContext context) {
    List<TaskRow> _tasks = new List.generate(count, (int i) => new TaskRow());

    for (var i = 0; i < _tasks.length; i++) {
      times.add(_tasks[i].time);
    }

    for (var i = 0; i < _tasks.length; i++) {
      tasks.add(_tasks[i].task);
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

      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.redAccent[400], items: [
        new BottomNavigationBarItem(
          icon: new IconButton(
            icon: Icon(Icons.assignment_turned_in, color: Colors.white),
            onPressed: _addNewTask,
          ),
          title: new Text(
            "Done",
            style: TextStyle(color: Colors.white),
          ),
        ),
        new BottomNavigationBarItem(
          icon: new IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          additionalInfo(tasks: tasks, times: times)));
            },
            icon: Icon(
              Icons.chevron_right,
              color: Colors.white,
            ),
          ),
          title: new Text(
            "Next",
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
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

      setState(() {
        count = count + 1;
      });
  }
}
