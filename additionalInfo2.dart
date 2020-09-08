//Additional information for the long study schedule

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:smart_schedule_creator/CreateSchedule2.dart';
import 'package:smart_schedule_creator/GenerateSchedule2.dart';

class additionalInfo extends StatefulWidget {
  final List tasks;
  final List times;

  additionalInfo({
    Key key,
    @required this.tasks,
    @required this.times,
  }) : super(key: key);

  @override
  _additionalInfoState createState() => _additionalInfoState();
}

class _additionalInfoState extends State<additionalInfo> {
  List unavailableTimes = [];
  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();
  TimeOfDay _twelve = new TimeOfDay(hour: 24, minute: 0);
  TimeOfDay _eleven = new TimeOfDay(hour: 23, minute: 0);
  TimeOfDay _ten = new TimeOfDay(hour: 22, minute: 0);
  TimeOfDay _nine = new TimeOfDay(hour: 21, minute: 0);
  TimeOfDay _eight = new TimeOfDay(hour: 20, minute: 0);
  TimeOfDay _seven = new TimeOfDay(hour: 19, minute: 0);
  TimeOfDay _six = new TimeOfDay(hour: 18, minute: 0);
  TimeOfDay _five = new TimeOfDay(hour: 17, minute: 0);
  TimeOfDay _four = new TimeOfDay(hour: 16, minute: 0);
  TimeOfDay _three = new TimeOfDay(hour: 15, minute: 0);
  TimeOfDay _two = new TimeOfDay(hour: 14, minute: 0);
  TimeOfDay _one = new TimeOfDay(hour: 13, minute: 0);
  TimeOfDay _twelve2 = new TimeOfDay(hour: 12, minute: 0);
  TimeOfDay _eleven2 = new TimeOfDay(hour: 11, minute: 0);
  TimeOfDay _ten2 = new TimeOfDay(hour: 10, minute: 0);
  TimeOfDay _nine2 = new TimeOfDay(hour: 9, minute: 0);
  TimeOfDay _eight2 = new TimeOfDay(hour: 8, minute: 0);
  TimeOfDay _seven2 = new TimeOfDay(hour: 7, minute: 0);
  TimeOfDay _six2 = new TimeOfDay(hour: 6, minute: 0);
  TimeOfDay _five2 = new TimeOfDay(hour: 5, minute: 0);
  TimeOfDay _four2 = new TimeOfDay(hour: 4, minute: 0);
  TimeOfDay _three2 = new TimeOfDay(hour: 3, minute: 0);
  TimeOfDay _two2 = new TimeOfDay(hour: 2, minute: 0);
  TimeOfDay _one2 = new TimeOfDay(hour: 1, minute: 0);
  bool _checked1 = false;
  bool _checked2 = false;
  bool _checked3 = false;
  bool _checked4 = false;
  bool _checked5 = false;
  bool _checked6 = false;
  bool _checked7 = false;
  bool _checked8 = false;
  bool _checked9 = false;
  bool _checked10 = false;
  bool _checked11 = false;
  bool _checked12 = false;
  bool _checked13 = false;
  bool _checked14 = false;
  bool _checked15 = false;
  bool _checked16 = false;
  bool _checked17 = false;
  bool _checked18 = false;
  bool _checked19 = false;
  bool _checked20 = false;
  bool _checked21 = false;
  bool _checked22 = false;
  bool _checked23 = false;
  bool _checked24 = false;
  final DateFormat formatter = DateFormat('dd-MM-yyyy');

  String formatTimeOfDay(TimeOfDay tod) {
    final now = new DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
    final format = DateFormat.jm(); //"6:00 AM"
    return format.format(dt);
  }

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: new DateTime.now(),
      lastDate: new DateTime(2101),
    );

    if (picked != null && picked != _date) {
      setState(() {
        _date = picked;
      });
    }
  }

  Future<Null> _selectStartTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: _time,
    );

    if (picked != null && picked != _time) {
      setState(() {
        _time = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Additional Information",
              style: TextStyle(fontFamily: 'Acme')),
          backgroundColor: Colors.redAccent[400],
        ),
        bottomNavigationBar:
        BottomNavigationBar(backgroundColor: Colors.redAccent[400], items: [
          new BottomNavigationBarItem(
            icon: new IconButton(
              icon: Icon(Icons.chevron_left, color: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateSchedule2()));
              },
            ),
            title: new Text(
              "Back",
              style: TextStyle(color: Colors.white),
            ),
          ),
          new BottomNavigationBarItem(
            icon: new IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GenerateSchedule2(
                          tasks: widget.tasks,
                          times: widget.times,
                          unavailableTimes: unavailableTimes,
                          date: _date,
                          startTime: _time,
                        )));
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
            child: ListView(scrollDirection: Axis.vertical, children: [
              Container(
                  padding: const EdgeInsets.all(16.0),
                  width: 380.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(24.0),
                      color: Colors.lightBlue[100],
                      elevation: 14.0,
                      shadowColor: Colors.blueGrey,
                      child: Column(children: [
                        Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                                child: Material(
                                    borderRadius: BorderRadius.circular(24.0),
                                    color: Colors.white,
                                    elevation: 14.0,
                                    shadowColor: Colors.blueGrey,
                                    child: Column(children: [
                                      Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Text('Select a date for your schedule: ',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Acme',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black,
                                              ))),
                                      new RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(24.0))),
                                          color: Colors.redAccent[400],
                                          child: new Text('Select Date',
                                              style: TextStyle(
                                                fontFamily: 'Acme',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: Colors.white,
                                              )),
                                          onPressed: () {
                                            setState(() {
                                              _selectDate(context);
                                            });
                                          }),
                                      new Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: new Text(
                                              'Date selected: ${formatter.format(_date)}',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                //fontFamily: 'Acme',
                                                //fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black,
                                              )))])))),

                        Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                                child: Material(
                                    borderRadius: BorderRadius.circular(24.0),
                                    color: Colors.white,
                                    elevation: 14.0,
                                    shadowColor: Colors.blueGrey,
                                    child: Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text('Select a start time for your schedule: ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Acme',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black,
                                            ))),
                                      new RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(24.0))),
                                          color: Colors.redAccent[400],
                                          child: new Text('Select Start Time',
                                              style: TextStyle(
                                                fontFamily: 'Acme',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: Colors.white,
                                              )),
                                          onPressed: () {
                                            _selectStartTime(context);
                                          }),
                                      new Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: new Text(
                                              'Start Time selected: ${_time.format(context)}',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                //fontFamily: 'Acme',
                                                //fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black,
                                )))])))),

                        Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                                child: Material(
                                    borderRadius: BorderRadius.circular(24.0),
                                    color: Colors.white,
                                    elevation: 14.0,
                                    shadowColor: Colors.blueGrey,
                                    child: Column(children: [
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              13.0, 20.0, 13.0, 13.0),
                                          child: Text(
                                              'Select the times you are unavailable on ${formatter.format(_date)}:',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Acme',
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black))),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child: Text(
                                              "1.   The time(s) you select means that you are unavailable from the hour you select plus one hour after. For example, if you select '1:00 pm' that means you are unavailable from '1:00 pm' to '2:00 pm'.",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black))),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child: Text(
                                              ' 2.   Once you have chosen the time(s) you are unavailable, they cannot be changed.',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black))),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_twelve)),
                                              value: _checked1,
                                              onChanged: (bool value) {
                                                if (_checked1 = true) {
                                                  unavailableTimes.add(_twelve);
                                                }
                                                setState(() {
                                                  _checked1 = value;
                                                });
                                              })),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_eleven)),
                                              value: _checked2,
                                              onChanged: (bool value) {
                                                if (_checked2 = true) {
                                                  unavailableTimes.add(_eleven);
                                                }
                                                setState(() {
                                                  _checked2 = value;
                                                });
                                              })),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_ten)),
                                              value: _checked3,
                                              onChanged: (bool value) {
                                                if (_checked3 = true) {
                                                  unavailableTimes.add(_ten);
                                                }
                                                setState(() {
                                                  _checked3 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_nine)),
                                              value: _checked4,
                                              onChanged: (bool value) {
                                                if (_checked4 = true) {
                                                  unavailableTimes.add(_nine);
                                                }
                                                setState(() {
                                                  _checked4 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_eight)),
                                              value: _checked5,
                                              onChanged: (bool value) {
                                                if (_checked5 = true) {
                                                  unavailableTimes.add(_eight);
                                                }
                                                setState(() {
                                                  _checked5 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_seven)),
                                              value: _checked6,
                                              onChanged: (bool value) {
                                                if (_checked6 = true) {
                                                  unavailableTimes.add(_seven);
                                                }
                                                setState(() {
                                                  _checked6 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_six)),
                                              value: _checked7,
                                              onChanged: (bool value) {
                                                if (_checked7 = true) {
                                                  unavailableTimes.add(_six);
                                                }
                                                setState(() {
                                                  _checked7 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_five)),
                                              value: _checked8,
                                              onChanged: (bool value) {
                                                if (_checked8 = true) {
                                                  unavailableTimes.add(_five);
                                                }
                                                setState(() {
                                                  _checked8 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_four)),
                                              value: _checked9,
                                              onChanged: (bool value) {
                                                if (_checked9 = true) {
                                                  unavailableTimes.add(_four);
                                                }
                                                setState(() {
                                                  _checked9 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_three)),
                                              value: _checked10,
                                              onChanged: (bool value) {
                                                if (_checked10 = true) {
                                                  unavailableTimes.add(_three);
                                                }
                                                setState(() {
                                                  _checked10 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_two)),
                                              value: _checked11,
                                              onChanged: (bool value) {
                                                if (_checked11 = true) {
                                                  unavailableTimes.add(_two);
                                                }
                                                setState(() {
                                                  _checked11 = value;
                                                });
                                              })),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_one)),
                                              value: _checked12,
                                              onChanged: (bool value) {
                                                if (_checked12 = true) {
                                                  unavailableTimes.add(_one);
                                                }
                                                setState(() {
                                                  _checked12 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_twelve2)),
                                              value: _checked13,
                                              onChanged: (bool value) {
                                                if (_checked13 = true) {
                                                  unavailableTimes.add(_twelve2);
                                                }
                                                setState(() {
                                                  _checked13 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_eleven2)),
                                              value: _checked14,
                                              onChanged: (bool value) {
                                                if (_checked14 = true) {
                                                  unavailableTimes.add(_eleven2);
                                                }
                                                setState(() {
                                                  _checked14 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_ten2)),
                                              value: _checked15,
                                              onChanged: (bool value) {
                                                if (_checked15 = true) {
                                                  unavailableTimes.add(_ten2);
                                                }
                                                setState(() {
                                                  _checked15 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_nine2)),
                                              value: _checked16,
                                              onChanged: (bool value) {
                                                if (_checked16 = true) {
                                                  unavailableTimes.add(_nine2);
                                                }
                                                setState(() {
                                                  _checked16 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_eight2)),
                                              value: _checked17,
                                              onChanged: (bool value) {
                                                if (_checked17 = true) {
                                                  unavailableTimes.add(_eight2);
                                                }
                                                setState(() {
                                                  _checked17 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_seven2)),
                                              value: _checked18,
                                              onChanged: (bool value) {
                                                if (_checked18 = true) {
                                                  unavailableTimes.add(_seven2);
                                                }
                                                setState(() {
                                                  _checked18 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_six2)),
                                              value: _checked19,
                                              onChanged: (bool value) {
                                                if (_checked19 = true) {
                                                  unavailableTimes.add(_six2);
                                                }
                                                setState(() {
                                                  _checked19 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_five2)),
                                              value: _checked20,
                                              onChanged: (bool value) {
                                                if (_checked20 = true) {
                                                  unavailableTimes.add(_five2);
                                                }
                                                setState(() {
                                                  _checked20 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_four2)),
                                              value: _checked21,
                                              onChanged: (bool value) {
                                                if (_checked21 = true) {
                                                  unavailableTimes.add(_four2);
                                                }
                                                setState(() {
                                                  _checked21 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_three2)),
                                              value: _checked22,
                                              onChanged: (bool value) {
                                                if (_checked22 = true) {
                                                  unavailableTimes.add(_three2);
                                                }
                                                setState(() {
                                                  _checked22 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_two2)),
                                              value: _checked23,
                                              onChanged: (bool value) {
                                                if (_checked23 = true) {
                                                  unavailableTimes.add(_two2);
                                                }
                                                setState(() {
                                                  _checked23 = value;
                                                });
                                              })),

                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6.0, 2.0, 6.0, 5.0),
                                          child:CheckboxListTile(
                                              title: Text(formatTimeOfDay(_one2)),
                                              value: _checked24,
                                              onChanged: (bool value) {
                                                if (_checked24 = true) {
                                                  unavailableTimes.add(_one2);
                                                }
                                                setState(() {
                                                  _checked24 = value;
                                                });
                                              }))
                                    ])))),
                      ])))
            ])));
  }
}
