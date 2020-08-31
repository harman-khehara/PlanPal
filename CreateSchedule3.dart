//COLLECTS INFO ON SCHEDULE SPECIFICATIONS
import 'package:flutter/material.dart';

class CreateSchedule3 extends StatefulWidget {
  @override
  _CreateSchedule3State createState() => _CreateSchedule3State();
}


class _CreateSchedule3State extends State<CreateSchedule3> {
  int _valuebed = 1;
  String timeofDay = 'AM';
  int _valuewake = 1;
  String timeofDay2 = 'AM';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create a Custom Study Schedule",
            style: TextStyle(fontFamily: 'Acme')),
        backgroundColor: Colors.redAccent[400],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [ //children of ListView
          Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 25.0, 16.0, 16.0),
                  child: SizedBox(
                      height: 335.0,
                      width: 380.0,
                      child: Material(
                          borderRadius: BorderRadius.circular(24.0),
                          color: Colors.lightBlue[100],
                          elevation: 14.0,
                          shadowColor: Colors.blueGrey,
                          child: Container(
                              padding: const EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 13.0),
                              child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text( "STEP 1: Select the hours for when you go to sleep and wake up. This sets the min and max limits for the schedule.",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                  Text("STEP 2: Select the ranges of unavailability for your schedule by clicking on the respective weekend/weekday buttons. This makes sure no activities will be scheduled during those times.",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                  Text("STEP 3: Add tasks to add to your schedule. Personalize your tasks by adding specifications.",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black))
                                ] //column children
                              )
                          )
                      )
                  )
              ),
              Text("Select the times for when you sleep and wake up:", style: TextStyle(fontFamily: 'Acme', fontSize: 20, color: Colors.redAccent[400])),
              Row(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(icon: Icon(Icons.brightness_3)), //bedtime -----------------------------------------
                  DropdownButton(value: _valuebed,
                      items: [
                        DropdownMenuItem(
                          child: Text("1"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("2"),
                          value: 2,
                        ),
                        DropdownMenuItem(
                            child: Text("3"),
                            value: 3
                        ),
                        DropdownMenuItem(
                            child: Text("4"),
                            value: 4
                        ),
                        DropdownMenuItem(
                            child: Text("5"),
                            value: 5
                        ),
                        DropdownMenuItem(
                            child: Text("6"),
                            value: 6
                        ),
                        DropdownMenuItem(
                            child: Text("7"),
                            value: 7
                        ),
                        DropdownMenuItem(
                            child: Text("8"),
                            value: 8
                        ),
                        DropdownMenuItem(
                            child: Text("9"),
                            value: 9
                        ),
                        DropdownMenuItem(
                            child: Text("10"),
                            value: 10
                        ),
                        DropdownMenuItem(
                            child: Text("11"),
                            value: 11
                        ),
                        DropdownMenuItem(
                            child: Text("12"),
                            value: 12
                        )
                      ],
                    onChanged: (value) {
                    setState(() {
                          _valuebed = value;
                    }); //setState
                    }),
                  DropdownButton(
                      value: timeofDay,
                      onChanged: (String newValue) {
                        setState(() {
                          timeofDay = newValue;
                        });
                      },
                      items: ['AM', 'PM'].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList()
                  ),
                  IconButton(icon: Icon(Icons.brightness_high)), //wake time -------------------------------------------
                  DropdownButton(value: _valuewake,
                      items: [
                        DropdownMenuItem(
                          child: Text("1"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("2"),
                          value: 2,
                        ),
                        DropdownMenuItem(
                            child: Text("3"),
                            value: 3
                        ),
                        DropdownMenuItem(
                            child: Text("4"),
                            value: 4
                        ),
                        DropdownMenuItem(
                            child: Text("5"),
                            value: 5
                        ),
                        DropdownMenuItem(
                            child: Text("6"),
                            value: 6
                        ),
                        DropdownMenuItem(
                            child: Text("7"),
                            value: 7
                        ),
                        DropdownMenuItem(
                            child: Text("8"),
                            value: 8
                        ),
                        DropdownMenuItem(
                            child: Text("9"),
                            value: 9
                        ),
                        DropdownMenuItem(
                            child: Text("10"),
                            value: 10
                        ),
                        DropdownMenuItem(
                            child: Text("11"),
                            value: 11
                        ),
                        DropdownMenuItem(
                            child: Text("12"),
                            value: 12
                        )
                      ],
                      onChanged: (value) {
                        setState(() {
                          _valuewake = value;
                        }); //setState
                      }),
                  DropdownButton(
                      value: timeofDay2,
                      onChanged: (String newValue) {
                        setState(() {
                          timeofDay2 = newValue;
                        });
                      },
                      items: ['AM', 'PM'].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList()
                  ),
                ]//children of Row
                ),
              Text("Select the times for unavailability:", style: TextStyle(fontFamily: 'Acme', fontSize: 20, color: Colors.redAccent[400])),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        ButtonTheme(
                        minWidth: 40.0,
                        height: 36.0,
                          child: RaisedButton(child: Text ("S"))
                        ),
                      ButtonTheme(
                          minWidth: 40.0,
                          height: 36.0,
                          child: RaisedButton(child: Text ("M"))
                      ),
                      ButtonTheme(
                          minWidth: 40.0,
                          height: 36.0,
                          child: RaisedButton(child: Text ("T"))
                      ),
                      ButtonTheme(
                          minWidth: 40.0,
                          height: 36.0,
                          child: RaisedButton(child: Text ("W"))
                      ),
                      ButtonTheme(
                          minWidth: 40.0,
                          height: 36.0,
                          child: RaisedButton(child: Text ("T"))
                      ),
                      ButtonTheme(
                          minWidth: 40.0,
                          height: 36.0,
                          child: RaisedButton(child: Text ("F"))
                      ),
                      ButtonTheme(
                          minWidth: 40.0,
                          height: 36.0,
                          child: RaisedButton(child: Text ("S"))
                      ),
                    ],
                  )
                ] //children of Column
              )
          ] //children of ListView
          )
      );
  }
}
