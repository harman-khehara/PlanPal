//Generate the short study schedule

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GenerateSchedule1 extends StatefulWidget {
  final List tasks;
  final List times;
  final List unavailableTimes;
  final DateTime date;
  final TimeOfDay startTime;

  GenerateSchedule1({
    Key key,
    @required this.tasks,
    @required this.times,
    @required this.unavailableTimes,
    @required this.date,
    @required this.startTime,
  }) : super(key: key);

  @override
  _GenerateSchedule1State createState() => _GenerateSchedule1State();
}

class _GenerateSchedule1State extends State<GenerateSchedule1> {
  List newList = [];
  List newList2 = [];
  List newList3 = [];
  List unavailableTimes2 = [];
  List unavailableTimes3 = [];

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
    final format = DateFormat.jm(); //"6:00 AM"
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

  List getNewList2(newList, startTime, unavailableTimes) {
    List newList2 = [];

    for (var i = 0; i < newList.length; i++) {
      if (!(unavailableTimes.contains(add(1, 0, startTime)))) {
        newList2.add(newList[i]);
        newList2.add(startTime);
        newList2.add(add(1, 0, startTime));
        newList2.add('Break');
        newList2.add(add(1, 0, startTime));
        newList2.add(add(1, 10, startTime));
        //unavailableTimes.add(add(0, 10, startTime));
//        for (var i in getAllUnavailableTimes(startTime)){
//          unavailableTimes.add(i);
//        }
        startTime = add(1, 10, startTime);
      } else {
        startTime = add(1, 0, startTime);
        while (unavailableTimes.contains(startTime)) {
          startTime = add(1, 0, startTime);
        }
        newList2.add(newList[i]);
        newList2.add(startTime);
        newList2.add(add(1, 0, startTime));
        newList2.add('Break');
        newList2.add(add(1, 0, startTime));
        newList2.add(add(1, 10, startTime));
        //unavailableTimes.add(add(0, 10, startTime));
//        for (var i in getAllUnavailableTimes(startTime)){
//          unavailableTimes.add(i);
//        }
        startTime = add(1, 10, startTime);
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
    newList2 = getNewList2(newList, startTime, unavailableTimes3);
    newList3 = formatTime(newList2);
    print(newList3);

    return Scaffold(
        appBar: AppBar(
          title: Text("Generated Short Study Schedule",
              style: TextStyle(fontFamily: 'Acme')),
          backgroundColor: Colors.redAccent[400],
        ),
        body: Container(
            child: Column(
                children: [for (var i in newList3) Text(i.toString())])));
  }
}
