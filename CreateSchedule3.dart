//Create custom study schedule page
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
                ]
                )
                ] //children of Column
              )
          ] //children of ListView
          )
      );
  }
}
//DateTime.now().add(Duration(hours: 1))
