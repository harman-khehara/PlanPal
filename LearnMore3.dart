//Learn more about custom study schedules page

import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/CreateSchedule3.dart';

class LearnMore3 extends StatefulWidget {
  @override
  _LearnMore3State createState() => _LearnMore3State();
}

class _LearnMore3State extends State<LearnMore3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Study Schedules",
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
                      "Custom schedules offer these features:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.lightBlue[900],
                        fontFamily: 'Acme',
                      ),
                    ),
                    Text(
                      "✓ Input for bedtime and morning times",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "✓ Blocking certain parts of the day/week for unavailability",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "✓ Input for personalized tasks with self-stated time requirements",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    Text("✓ Modification of a generated schedule",
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
                                  builder: (context) => CreateSchedule3()));
                        },
                        child: Text('Create Custom Study Schedule',
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
