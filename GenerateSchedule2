//Generate the Long study schedule

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_schedule_creator/additionalInfo2.dart';
import 'package:smart_schedule_creator/homepage.dart';

class GenerateSchedule2 extends StatefulWidget {
  final List tasks;
  final List times;
  final List unavailableTimes;
  final DateTime date;
  final TimeOfDay startTime;

  GenerateSchedule2({
    Key key,
    @required this.tasks,
    @required this.times,
    @required this.unavailableTimes,
    @required this.date,
    @required this.startTime,
  }) : super(key: key);

  @override
  _GenerateSchedule2State createState() => _GenerateSchedule2State();
}

class _GenerateSchedule2State extends State<GenerateSchedule2> {
  List newList = [];
  List newList2 = [];
  List newList3 = [];
  List unavailableTimes2 = [];
  List unavailableTimes3 = [];
  String formatDate(DateTime date) => new DateFormat("MMMM d").format(date);

  TimeOfDay add(int hour, int minute, TimeOfDay time) {
    return TimeOfDay(hour: time.hour + hour, minute: time.minute + minute);
  }

  List getAllUnavailableTimes(time) {
    List l = [];

    for (var i = 0; i <= 59; i++) {
      l.add(TimeOfDay(hour: time.hour, minute: i));
    }
    return l;
  }

  String formatTimeOfDay(TimeOfDay tod) {
    final now = new DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
    final format = DateFormat.jm();
    return format.format(dt);
  }

  List getNewList(tasks, times) {
    for (var i = 0; i < tasks.length; i++) {
      for (var j = 0; j < times[i]; j++) {
        newList.add(tasks[i]);
      }
    }
    return newList;
  }

  List getNewList2(newList, startTime, unavailableTimes, startTime2) {
    List newList2 = [];
    var i = 0;
    while (i != newList.length) {
      if (!(unavailableTimes.contains(formatTimeOfDay(add(1, 0, startTime)))||
          unavailableTimes.contains(formatTimeOfDay(add(2, 0, startTime))) ||
          unavailableTimes.contains(formatTimeOfDay(add(1, 0, startTime))))) {
        newList2.add(newList[i]);
        newList2.add(startTime);
        newList2.add(add(1, 0, startTime));
        startTime = add(1, 0, startTime);
        i += 1;
        if (i <= newList.length) {
          newList2.add(newList[i]);
          newList2.add(startTime);
          newList2.add(add(1, 0, startTime));
          startTime = add(1, 0, startTime);
          i += 1;
          if (i <= newList.length) {
            newList2.add(newList[i]);
            newList2.add(startTime);
            newList2.add(add(1, 0, startTime));
            startTime = add(1, 0, startTime);
            i += 1;
        }
          else{
            newList2.add("Break");
            newList2.add(startTime);
            newList2.add(add(0, 30, startTime));
            startTime = add(0, 30, startTime);
          }
        }
        else{
          newList2.add("Break");
          newList2.add(startTime);
          newList2.add(add(0, 30, startTime));
          startTime = add(0, 30, startTime);
        }

      }
      else {
        if (unavailableTimes.contains(formatTimeOfDay(add(1, 0, startTime))) ||
            unavailableTimes.contains(formatTimeOfDay(add(2, 0, startTime))) ||
            unavailableTimes.contains(formatTimeOfDay(add(3, 0, startTime))) ||
            unavailableTimes.contains(formatTimeOfDay(add(4, 0, startTime)))) {
          startTime = add(1, 0, startTime);
          startTime2 = add(1, 0, startTime);
          while (unavailableTimes.contains(formatTimeOfDay(startTime)) ||
              unavailableTimes.contains(formatTimeOfDay(startTime2))) {
            startTime = add(1, 0, startTime);
            startTime2 = add(1, 0, startTime);
          }
        }
        newList2.add(newList[i]);
        newList2.add(startTime);
        newList2.add(add(1, 0, startTime));
        startTime = add(1, 0, startTime);
        i += 1;
        if (i <= newList.length) {
          newList2.add(newList[i]);
          newList2.add(startTime);
          newList2.add(add(1, 0, startTime));
          startTime = add(1, 0, startTime);
          i += 1;
          if (i <= newList.length) {
            newList2.add(newList[i]);
            newList2.add(startTime);
            newList2.add(add(1, 0, startTime));
            startTime = add(1, 0, startTime);
            i += 1;
          }
          else{
            newList2.add("Break");
            newList2.add(startTime);
            newList2.add(add(0, 30, startTime));
            startTime = add(0, 30, startTime);
          }
        }
        else{
          newList2.add("Break");
          newList2.add(startTime);
          newList2.add(add(0, 30, startTime));
          startTime = add(0, 30, startTime);
        }
      }
    }
    return newList2;
  }

  List formatTime(newList2) {
    List newList3 = [];

    for (var i in newList2) {
      if (i is TimeOfDay) {
        newList3.add(formatTimeOfDay(i));
      } else {
        newList3.add(i);
      }
    }
    return newList3;
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(width: 3.0, color: Colors.redAccent[400]),
      borderRadius: BorderRadius.all(Radius.circular(24.0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    List tasks = widget.tasks[0];
    List times = widget.times[0];
    List unavailableTimes = widget.unavailableTimes;
    DateTime date = widget.date;
    TimeOfDay startTime = widget.startTime;

    for (var i in unavailableTimes) {
      unavailableTimes2.add(getAllUnavailableTimes(i));
    }

    for (var i = 0; i < unavailableTimes2.length; i++) {
      for (var k = 0; k < unavailableTimes2[i].length; k++) {
        unavailableTimes3.add(unavailableTimes2[i][k]);
      }
    }

    newList = getNewList(tasks, times);
    newList2 = getNewList2(
        newList, startTime, formatTime(unavailableTimes3), startTime);
    newList3 = formatTime(newList2);
    print(newList3);

    return Scaffold(
        appBar: AppBar(
          title: Text("Your Long Study Schedule",
              style: TextStyle(fontFamily: 'Acme')),
          backgroundColor: Colors.redAccent[400],
        ),

        bottomNavigationBar:
        BottomNavigationBar(backgroundColor: Colors.redAccent[400],
            items: [
              new BottomNavigationBarItem(
                icon: new IconButton(
                  icon: Icon(Icons.chevron_left, color: Colors.white),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => additionalInfo()));
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
                            builder: (context) => HomePage()));
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


        body: ListView(children: [
          Container(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                  borderRadius: BorderRadius.circular(24.0),
                  color: Colors.white,
                  elevation: 14.0,
                  shadowColor: Colors.blueGrey,
                  child: Column(children: [
                    Container(
                        width: 380.0,
                        height: 100.0,
                        padding: const EdgeInsets.all(16.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(24.0),
                          color: Colors.redAccent[400],
                          elevation: 14.0,
                          shadowColor: Colors.blueGrey,
                          child: Center(child:Text(
                              '${formatDate(date)}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                fontFamily: 'Karla',
                                color: Colors.white,
                              )
                          )
                          ),
                        )
                    ),


                    for (var i = 0; i < newList3.length; i += 3)
                      Row(children: [
                        Container(
                            width: 230.0,
                            height: 100.0,
                            padding: const EdgeInsets.all(16.0),
                            child: Material(
                                borderRadius: BorderRadius.circular(24.0),
                                color: Colors.redAccent[400],
                                elevation: 14.0,
                                shadowColor: Colors.blueGrey,
                                child: Center(
                                    child: Row(children: [
                                      Center(
                                          child: Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  16.0, 16.0, 7.0, 16.0),
                                              child:
                                              Text(newList3[i + 1].toString(),
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'Acme',
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  )))),
                                      Text(' - ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Acme',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              7.0, 16.0, 16.0, 16.0),
                                          child: Text(newList3[i + 2].toString(),
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Acme',
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              )))
                                    ])))),
                        Container(
                            decoration: myBoxDecoration(),
                            width: 110.0,
                            height: 70.0,
                            //padding: const EdgeInsets.all(16.0),
                            child: Material(
                                borderRadius: BorderRadius.circular(24.0),
                                color: Colors.white,
                                //elevation: 14.0,
                                //shadowColor: Colors.blueGrey,
                                child:
                                Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Center(child: Text(newList3[i].toString(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          //fontFamily: 'Acme',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent[400],
                                        )))))),
                      ])
                  ])))
        ]));
  }
}
