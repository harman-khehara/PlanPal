//Create short study schedule page

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/TaskRow2.dart';
import 'package:smart_schedule_creator/additionalInfo2.dart';
import 'package:flutter/material.dart';


class CreateSchedule2 extends StatefulWidget {
  @override
  _CreateSchedule2State createState() => _CreateSchedule2State();
}

class _CreateSchedule2State extends State<CreateSchedule2> {
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
        title: Text("Create a Long Study Schedule",
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
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 25.0, 16.0, 16.0),
              child: SizedBox(
                  height: 340.0,
                  width: 380.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(24.0),
                      color: Colors.lightBlue[100],
                      elevation: 14.0,
                      shadowColor: Colors.blueGrey,
                      child: Container(
                          padding: const EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 13.0),
                          child: Column(
                              children: [
                                Text('Begin by entering a name for the task you wish to work on for the day. '
                                    'Next to the name of the task, enter the amount of hours you wish to spend on that task. To add more tasks, '
                                    "click the + button near the bottom of the screen. Click the 'Done' button on the bottom of the screen once you have added "
                                    "all tasks for the day; proceed by clicking 'Next'.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 13.0),
                                    child: Text('NOTE:',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)
                                    )
                                ),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(6.0, 2.0, 6.0, 5.0),
                                    child: Text('1.   The total time you wish to spend on all tasks for the day must not exceed 6 hours.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black)
                                    )
                                ),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(6.0, 2.0, 6.0, 5.0),
                                    child: Text(' 2.   Once you have chosen the amount of time you wish to spend on a task, it cannot be changed.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black)
                                    )
                                )
                              ]
                          )
                      ))),
            ),


            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    color: Colors.white,
                    elevation: 14.0,
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
