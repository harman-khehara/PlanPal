//Learn more about short study schedules page

import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/CreateSchedule1.dart';

class LearnMore1 extends StatefulWidget {
  @override
  _LearnMore1State createState() => _LearnMore1State();
}

class _LearnMore1State extends State<LearnMore1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Short Study Schedules",
            style: TextStyle(fontFamily: 'Acme')),
        backgroundColor: Colors.redAccent[400],
      ),
      body: Container(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
          width: 395.0,
          height: 400.0,
          child: Material(
              color: Colors.lightBlue[100],
              elevation: 14.0,
              borderRadius: BorderRadius.circular(24.0),
              shadowColor: Colors.blueGrey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Short schedules offer these features:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.lightBlue[900],
                        fontFamily: 'Acme',
                      ),
                    ),
                    Text(
                      "✓ Complete tasks for the day in multiple 1 hour intervals",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "✓ Block off times of the day you are unavailable",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "✓ Choose a specific day for which you would like to create a schedule",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    Text("✓ Choose a start time for your schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        )),
                    RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateSchedule1()));
                        },
                        child: Text('Create Short Study Schedule',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Acme',
                              fontSize: 16,
                            )),
                        color: Colors.redAccent[400],
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(24.0)))),
                  ] // Children3
              ))),
    );
  }
}
