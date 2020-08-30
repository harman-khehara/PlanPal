//Learn more about long study schedules page

import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/CreateSchedule2.dart';

class LearnMore2 extends StatefulWidget {
  @override
  _LearnMore2State createState() => _LearnMore2State();
}

class _LearnMore2State extends State<LearnMore2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Long Study Schedules",
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
                      "Long schedules offer these features:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.lightBlue[900],
                        fontFamily: 'Acme',
                      ),
                    ),
                    Text(
                      "✓ ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "✓ ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "✓ ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    Text("✓ ",
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
                                  builder: (context) => CreateSchedule2()));
                        },
                        child: Text('Create Long Study Schedule',
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
