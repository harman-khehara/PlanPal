import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/GenerateSchedule3.dart';
import 'package:smart_schedule_creator/TaskRow3.dart';
import 'package:smart_schedule_creator/UnavailableTimes.dart';

class GeneratingTasks extends StatefulWidget {

  final List unavTimesSun;
  final TimeOfDay bedtime;
  final TimeOfDay waketime;
  final Set positionSun;
  final Set positionMon;
  final Set positionTue;
  final Set positionWed;
  final Set positionThu;
  final Set positionFri;
  final Set positionSat;

  GeneratingTasks({
    Key key,
    @required this.unavTimesSun,
    @required this.bedtime,
    @required this.waketime,
    @required this.positionSun,
    @required this.positionMon,
    @required this.positionTue,
    @required this.positionWed,
    @required this.positionThu,
    @required this.positionFri,
    @required this.positionSat,
  }) : super(key: key);

  @override
  _GeneratingTasksState createState() => _GeneratingTasksState();
}

class _GeneratingTasksState extends State<GeneratingTasks> {

  int count = 1;
  List newTimes = [];
  List newTasks = [];
  List newDays = [];
  List extraEventsNotice = [];

  var extraItems = ["Yes","No"];
  List _extraValues = ["Yes"];

  @override
  Widget build(BuildContext context) {

    TimeOfDay bedtime = widget.bedtime;
    TimeOfDay waketime = widget.waketime;
    List unavTimesSun = widget.unavTimesSun;
    Set positionSun = widget.positionSun;
    Set positionMon = widget.positionMon;
    Set positionTue = widget.positionTue;
    Set positionWed = widget.positionWed;
    Set positionThu = widget.positionThu;
    Set positionFri = widget.positionFri;
    Set positionSat = widget.positionSat;
    int thisTime;
    int maxTimeLimit;

    List<TaskRow3> _tasks = new List.generate(count, (int i) => new TaskRow3());

    for (var i = 0; i < _tasks.length; i++) {
      newTimes.add(_tasks[i].times);
    }

    for (var i = 0; i < _tasks.length; i++) {
      newTasks.add(_tasks[i].tasks);
    }

    for (var i = 0; i < _tasks.length; i++) {
      newDays.add(_tasks[i].days);
    }

    int maxLimit (thisTime) {
      double _numberofgrids;
      double _newwaketime = waketime.hour.toDouble();
      double _newbedtime = bedtime.hour.toDouble();
      double endbedtime = _newbedtime -= 1; //end schedule 1 hour before
      double endwaketime = _newwaketime += 1; // start schedule 1 hour after
      if (endwaketime < endbedtime) {
        _numberofgrids = endbedtime -= endwaketime;
      } else {
        _numberofgrids = endwaketime -= endbedtime;
      }
      return _numberofgrids.toInt();
    }

    maxTimeLimit = maxLimit(thisTime);

    String textHolder = "You have a maximum time limit of $maxTimeLimit hours per day. Please do not exceed this.";

    void _addNewTask () {
      setState(() {
        count = count + 1;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Add activities",
            style: TextStyle(fontFamily: 'Acme')),
        backgroundColor: Colors.redAccent[400],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewTask,
        backgroundColor: Colors.redAccent[400],
        child: Icon(Icons.add),
      ),

      bottomNavigationBar:
      BottomNavigationBar(backgroundColor: Colors.redAccent[400],
          items: [
            new BottomNavigationBarItem(
              icon: new IconButton(
                icon: Icon(Icons.chevron_left, color: Colors.white),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UnavailableTimes(
                        bedtime: bedtime,
                        waketime: waketime,
                      )));
                },
              ),
              title: new Text(
                "Back",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            new BottomNavigationBarItem(
              icon: new IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GenerateSchedule3(
                            bedtime: bedtime,
                            waketime: waketime,
                            positionSun: positionSun,
                            positionMon: positionMon,
                            positionTue: positionTue,
                            positionWed: positionWed,
                            positionThu: positionThu,
                            positionFri: positionFri,
                            positionSat: positionSat,
                            unavTimesSun: unavTimesSun,
                            newTimes: newTimes,
                            newTasks: newTasks,
                            newDays: newDays,
                            extraEventsNotice: extraEventsNotice,
                          )));
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              title: new Text(
                "Home",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,),
              ),
            )
          ]),
      body: ListView(scrollDirection: Axis.vertical,
          children: [
          Column(mainAxisSize: MainAxisSize.min,
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(16.0,25.0,16.0,16.0),
                child: SizedBox(
                    height: 200.0,
                    width: 400.0,
                    child: Material(
                        borderRadius: BorderRadius.circular(24.0),
                        color: Colors.lightBlue[100],
                        elevation: 14.0,
                        shadowColor: Colors.blueGrey,
                        child: Container(
                            padding: const EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 13.0),
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Enter activities to add to your auto-generated schedule by clicking the plus icon at the bottom right.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold,),
                                ),
                                Text(
                                  "Would you like to add random events for hydrating, taking a walk, etc?",textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 15, color: Colors.redAccent[400],fontWeight: FontWeight.bold,),
                                ),
                                DropdownButton<String>(
                                  value: _extraValues[0],
                                  icon: Icon(Icons.expand_more),
                                  iconSize: 24,
                                  elevation: 16,
                                  style: TextStyle(color: Colors.black),
                                  onChanged: (String newValue) {
                                    _extraValues[0] = newValue;
                                    extraEventsNotice.add(_extraValues[0]);
                                    setState(() {
                                    });
                                  },
                                  items:
                                  extraItems.map<DropdownMenuItem<String>>((String value){
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ],
                            )
                        )
                    )
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(16.0, 25.0, 16.0, 16.0),
                child: SizedBox(
                  height: 75,
                  width: 400,
                  child: Material(
                      borderRadius: BorderRadius.circular(24.0),
                      color: Colors.lightBlue[100],
                      elevation: 14.0,
                      shadowColor: Colors.blueGrey,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 13.0),
                        child: Text("$textHolder", textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Acme', fontSize: 17,)),
                      )
                  ),
               )
              ),
              Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _tasks
                ),
            ],),
        ]
      )
    );
  }
}
