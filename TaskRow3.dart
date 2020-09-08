//Create widget for task input for custom schedule

/// QUESTIONS TO ASK
// What is the activity?
// How much time do you usually spend on it?
// What days do you usually prefer for this activity?

import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/globals.dart';

List userTasks = Globals.customTasks;
List customTimes = Globals.customTimes;
List customDays = Globals.customDays;

class TaskRow3 extends StatefulWidget {

  List get times {
    return customTimes;
  }
  List get tasks{
    return userTasks;
  }
  List get days{
    return customDays;
  }

  @override
  _TaskRow3State createState() => _TaskRow3State();
}

class _TaskRow3State extends State<TaskRow3> {

  final textControllerName = TextEditingController();

  var timeList = ["1","2","3","4","5","6","7","8","9","10",'11','12'];
  List _timeValues = ["1"];

  bool _checkedSun = false;
  bool _checkedMon = false;
  bool _checkedTue = false;
  bool _checkedWed = false;
  bool _checkedThu = false;
  bool _checkedFri = false;
  bool _checkedSat = false;


  @override
  Widget build(BuildContext context) {
    return new Card(
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 400.0,
              child: TextFormField(
                controller: textControllerName,
                decoration: const InputDecoration(
                  //contentPadding: EdgeInsets.symmetric(vertical: 25.0,),
                    hintText: "Enter an activity",
                    icon: Icon(Icons.assignment)),
              ),
            ),
          ),

          Text("How many hours do you expect to spend on this activity?",style: TextStyle(color: Colors.blueAccent,fontFamily: 'Acme', fontSize: 17,)),

          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  height: 50.0,
                  width: 80.0,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 2.0,
                          style: BorderStyle.solid,
                          color: Colors.redAccent[400]),
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    ),
                  ),
                  child: Center(
                    child: DropdownButton<String>(
                      value: _timeValues[0],
                      icon: Icon(Icons.expand_more),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.black),
                      onChanged: (String newValue) {
                        _timeValues[0] = newValue;
                        customTimes.add(int.parse(_timeValues[0]));
                        userTasks.add(textControllerName.text);
                        setState(() {
                          //print(dropdownValue);
                        });
                      },
                      items:
                      timeList.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ))),
          Text("What days do you usually prefer for this activity?",style: TextStyle(color: Colors.blueAccent,fontFamily: 'Acme', fontSize: 17,)),

          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("SUN",style: TextStyle(fontFamily: 'Acme', fontSize: 17,)),
              Text("MON",style: TextStyle(fontFamily: 'Acme', fontSize: 17,)),
              Text("TUE",style: TextStyle(fontFamily: 'Acme', fontSize: 17,)),
              Text("WED",style: TextStyle(fontFamily: 'Acme', fontSize: 17,)),
              Text("THU",style: TextStyle(fontFamily: 'Acme', fontSize: 17,)),
              Text("FRI",style: TextStyle(fontFamily: 'Acme', fontSize: 17,)),
              Text("SAT",style: TextStyle(fontFamily: 'Acme', fontSize: 17,)),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Checkbox(
                value: _checkedSun,
                onChanged: (bool value){
                  setState(() {
                    _checkedSun=value;
                    customDays.add(1);
                  });
                },
              ),
              Checkbox(
                value: _checkedMon,
                onChanged: (bool value){
                  setState(() {
                    _checkedMon=value;
                    customDays.add(2);
                  });
                },
              ),
              Checkbox(
                value: _checkedTue,
                onChanged: (bool value){
                  setState(() {
                    _checkedTue=value;
                    customDays.add(3);
                  });
                },
              ),
              Checkbox(
                value: _checkedWed,
                onChanged: (bool value){
                  setState(() {
                    _checkedWed=value;
                    customDays.add(4);
                  });
                },
              ),
              Checkbox(
                value: _checkedThu,
                onChanged: (bool value){
                  setState(() {
                    _checkedThu=value;
                    customDays.add(5);
                  });
                },
              ),
              Checkbox(
                value: _checkedFri,
                onChanged: (bool value){
                  setState(() {
                    _checkedFri=value;
                    customDays.add(6);
                  });
                },
              ),
              Checkbox(
                value: _checkedSat,
                onChanged: (bool value){
                  setState(() {
                    _checkedSat=value;
                    customDays.add(7);
                  });
                },
              ),
            ],
          ),
          Center(
            child: Divider(
              color: Colors.redAccent[400],
              height: 20,
              thickness: 2,
              indent: 0,
              endIndent: 0,
            ),
          )
        ],
      )
    );
  }
}

