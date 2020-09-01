//COLLECTS INFO ON SCHEDULE SPECIFICATIONS
import 'package:flutter/material.dart';

class CreateSchedule3 extends StatefulWidget {
  @override
  _CreateSchedule3State createState() => _CreateSchedule3State();
}

class LimitTimes {int value; String name; LimitTimes(this.value, this.name);}


class _CreateSchedule3State extends State<CreateSchedule3> {
  int _valuebed = 1;   String timeofDay = 'AM';
  int _valuewake = 1; String timeofDay2 = 'AM';
  //int unavstart = 1; String unavtime = 'AM'; //starting time
  //int unavend = 1; String unavtime2 = 'AM'; //ending time
  //int unavday = 1; //What day the user in unavailble

  final days = {
    1: "SUN",
    2: "MON",
    3: "TUE",
    4: "WED",
    5: "THU",
    6: "FRI",
    7: "SAT",
  };

  final startEndTime = {
    1: "1",
    2: "2",
    3: "3",
    4: "4",
    5: "5",
    6: "6",
    7: "7",
    8: "8",
    9: "9",
    10: "10",
    11: "11",
    12: "12",
  };

  final dayTime = {
    1: "AM",
    2: "PM",
  };

  void _addNewDropDown() {
      print("test");
  }


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
              Padding(padding: const EdgeInsets.fromLTRB(16.0, 25.0, 16.0, 16.0),
                  child: SizedBox(
                    height: 150.0,
                    width: 400.0,
                    child: Material (
                      borderRadius: BorderRadius.circular(24.0),
                      color: Colors.lightBlue[100],
                      elevation: 14.0,
                      shadowColor: Colors.blueGrey,
                      child: Container (
                        padding: const EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 13.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Select the times for when you sleep and wake up:", style: TextStyle(fontFamily: 'Acme', fontSize: 20, color: Colors.redAccent[400])),
                            Row(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(icon: Icon(Icons.brightness_3,color: Colors.deepPurpleAccent)), //bedtime -----------------------------------------
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
                                  IconButton(icon: Icon(Icons.brightness_high,color: Colors.yellow)), //wake time -------------------------------------------
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
                          ]
                          )
                      )
                    )
                  )

              ),
              Padding(padding: const EdgeInsets.fromLTRB(16.0, 25.0, 16.0, 16.0),
                child: SizedBox(
                  height: 340.0,
                  width: 380.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(24.0),
                    color: Colors.lightBlue[100],
                    elevation: 14.0,
                    shadowColor: Colors.blueGrey,
                    child: Container(padding: const EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 13.0),
                      child: Column(
                        children: [
                          Row(
                              children: [
                                Text("Select unavailability times:         ", style: TextStyle(fontFamily: 'Acme', fontSize: 20, color: Colors.redAccent[400])),
                                ButtonTheme(
                                    minWidth: 20.0,
                                    height: 25.0,
                                    child: RaisedButton(
                                        highlightColor: Colors.blueAccent[400],
                                        onPressed: () => _addNewDropDown(), //add dropdown functionality
                                        child: Icon(Icons.add, color: Colors.white)
                                    )
                                )
                              ]
                          ),
                        ]
                      ),

                    )
                  )
                ),
              ),

                ] //children of Column
              )
          ] //children of ListView
          )
      );
  }
}



/*FIX THIS LATER
Row(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:[
                                DropdownButton(value: unavday,
                                    items: [
                                      DropdownMenuItem(
                                        child: Text("SUN"),
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("MON"),
                                        value: 2,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("TUE"),
                                        value: 3,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("WED"),
                                        value: 4,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("THU"),
                                        value: 5,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("FRI"),
                                        value: 6,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("SAT"),
                                        value: 7,
                                      ),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        unavday = value;
                                      }); //setState
                                    }),
                                DropdownButton(value: unavstart,
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
                                        unavstart = value;
                                      }); //setState
                                    }),
                                DropdownButton(
                                    value: unavtime,
                                    onChanged: (String newValue) {
                                      setState(() {
                                        unavtime = newValue;
                                      });
                                    },
                                    items: ['AM', 'PM'].map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList()
                                ),
                                Text("to", style: TextStyle(fontFamily: 'Acme', fontSize: 20)),
                                DropdownButton(value: unavend,
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
                                        unavend = value;
                                      }); //setState
                                    }),
                                DropdownButton(
                                    value: unavtime2,
                                    onChanged: (String newValue) {
                                      setState(() {
                                        unavtime2 = newValue;
                                      });
                                    },
                                    items: ['AM', 'PM'].map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList()
                                ),
                              ]
                          ),*/
