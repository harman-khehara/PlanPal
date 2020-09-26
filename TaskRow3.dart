//Create widget for task input for custom schedule

/// QUESTIONS TO ASK
// What is the activity?
// How much time do you usually spend on it?
// What days do you usually prefer for this activity?

import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/globals.dart';
import 'package:smart_schedule_creator/GenerateSchedule3.dart';
import 'package:smart_schedule_creator/GeneratingTasks.dart';


List customTasks = Globals.customTasks;
List customTimes = Globals.customTimes;
Set customDaySunday = Globals.customDaySunday;
Set customDayMonday = Globals.customDayMonday;
Set customDayTuesday = Globals.customDayTuesday;
Set customDayWednesday = Globals.customDayWednesday;
Set customDayThursday = Globals.customDayThursday;
Set customDayFriday = Globals.customDayFriday;
Set customDaySaturday = Globals.customDaySaturday;


class TaskRow3 extends StatefulWidget {

  List get times {
    return customTimes;
  }
  List get tasks{
    return customTasks;
  }
  Set get daysSun{
    return customDaySunday;
  }
  Set get daysMon{
    return customDayMonday;
  }
  Set get daysTue{
    return customDayTuesday;
  }
  Set get daysWed{
    return customDayWednesday;
  }
  Set get daysThu{
    return customDayThursday;
  }
  Set get daysFri{
    return customDayFriday;
  }
  Set get daysSat{
    return customDaySaturday;
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
                        customTimes?.add(int.parse(_timeValues[0]));
                        customTasks?.add(textControllerName.text);
                        setState(() {
                        });
                      },
                      items:
                      timeList?.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      })?.toList() ?? [],
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
                  customDaySunday.add(textControllerName.text);
                  setState(() {
                    _checkedSun=value;
                  });
                },
              ),
              Checkbox(
                value: _checkedMon,
                onChanged: (bool value){
                  customDayMonday?.add(textControllerName.text);
                  setState(() {
                    _checkedMon=value;
                  });
                },
              ),
              Checkbox(
                value: _checkedTue,
                onChanged: (bool value){
                  customDayTuesday?.add(textControllerName.text);
                  setState(() {
                    _checkedTue=value;
                  });
                },
              ),
              Checkbox(
                value: _checkedWed,
                onChanged: (bool value){
                  customDayWednesday?.add(textControllerName.text);
                  setState(() {
                    _checkedWed=value;
                  });
                },
              ),
              Checkbox(
                value: _checkedThu,
                onChanged: (bool value){
                  customDayThursday?.add(textControllerName.text);
                  setState(() {
                    _checkedThu=value;
                  });
                },
              ),
              Checkbox(
                value: _checkedFri,
                onChanged: (bool value){
                  customDayFriday?.add(textControllerName.text);
                  setState(() {
                    _checkedFri=value;
                  });
                },
              ),
              Checkbox(
                value: _checkedSat,
                onChanged: (bool value){
                  customDaySaturday?.add(textControllerName.text);
                  setState(() {
                    _checkedSat=value;
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

