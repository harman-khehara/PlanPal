//Create widget for task input for custom schedule

/// QUESTIONS TO ASK
// What is the activity?
// How much time do you usually spend on it?
// What days do you usually prefer for this activity?
// Would you like to add random events for hydrating, taking a walk, etc?

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_schedule_creator/globals.dart';

List userTasks = Globals.customTasks;
List customTimes = Globals.customTimes;
List customDays = Globals.customDays;
List extraEventsNotice = Globals.extraEventsNotice;


class TaskRow3 extends StatefulWidget {

  List get times {
    return customTimes;
  }
  List get task{
    return userTasks;
  }
  List get days{
    return customDays;
  }
  List get exEvents{
    return extraEventsNotice;
  }
  @override
  _TaskRow3State createState() => _TaskRow3State();
}


class _TaskRow3State extends State<TaskRow3> {

  final textControllerName = TextEditingController();
  final numControllerTime = TextEditingController();

  bool _checkedSun = false;
  bool _checkedMon = false;
  bool _checkedTue = false;
  bool _checkedWed = false;
  bool _checkedThu = false;
  bool _checkedFri = false;
  bool _checkedSat = false;

  var extraItems = ["Yes","No"];
  List _checkedDays = [1,2,3,4,5,6,7]; //Sunday == 1, Monday == 2, etc.
  List _extraValues = [""];

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        Padding(padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 240.0,
            child: TextFormField(
              controller: textControllerName,
              decoration: const InputDecoration(
                hintText: "What's the activity?",
                icon: Icon(Icons.event)),
            ),
          ),
        ),
        Padding(padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 240.0,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFormField(
                  controller: numControllerTime,
                  decoration: const InputDecoration(labelText: "How much time do you usually spend on this activity?"),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly]
                ),
                Text("mins", style: TextStyle(fontFamily: 'Acme', fontSize: 18,))
              ],
            )
          ),
        ),
        Padding(padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 400.0,
            width: 400.0,
            child: Column(
              children: [
                CheckboxListTile(
                  title: Text("Sunday"),
                  value: _checkedSun,
                  onChanged: (bool value){
                    if(_checkedSun = true){
                      customDays.add(_checkedDays[1]);
                    }
                    setState(() {
                      _checkedSun = value;
                    });
                  }
                ),
                CheckboxListTile(
                    title: Text("Monday"),
                    value: _checkedMon,
                    onChanged: (bool value){
                      if(_checkedMon = true){
                        customDays.add(_checkedDays[2]);
                      }
                      setState(() {
                        _checkedMon = value;
                      });
                    }
                ),
                CheckboxListTile(
                    title: Text("Tuesday"),
                    value: _checkedTue,
                    onChanged: (bool value){
                      if(_checkedTue = true){
                        customDays.add(_checkedDays[3]);
                      }
                      setState(() {
                        _checkedTue = value;
                      });
                    }
                ),
                CheckboxListTile(
                    title: Text("Wednesday"),
                    value: _checkedWed,
                    onChanged: (bool value){
                      if(_checkedWed = true){
                        customDays.add(_checkedDays[4]);
                      }
                      setState(() {
                        _checkedWed = value;
                      });
                    }
                ),
                CheckboxListTile(
                    title: Text("Thursday"),
                    value: _checkedThu,
                    onChanged: (bool value){
                      if(_checkedThu = true){
                        customDays.add(_checkedDays[5]);
                      }
                      setState(() {
                        _checkedThu = value;
                      });
                    }
                ),
                CheckboxListTile(
                    title: Text("Friday"),
                    value: _checkedFri,
                    onChanged: (bool value){
                      if(_checkedFri = true){
                        customDays.add(_checkedDays[6]);
                      }
                      setState(() {
                        _checkedFri = value;
                      });
                    }
                ),
                CheckboxListTile(
                    title: Text("Saturday"),
                    value: _checkedSat,
                    onChanged: (bool value){
                      if(_checkedSat = true){
                        customDays.add(_checkedDays[7]);
                      }
                      setState(() {
                        _checkedSat = value;
                      });
                    }
                )
              ],
            ),
          ),
        ),
        Padding(padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 400.0,
            height: 100.0,
            child: Column(
                children: [
                  Text("Would you like to add random events for hydrating, taking a walk, etc?",
                    style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent[400])
                   ),
                  DropdownButton<String>(
                      value: _extraValues[0],
                      icon: Icon(Icons.expand_more),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.black),
                      onChanged: (String newValue) {
                        _extraValues[0] = newValue;
                        extraEventsNotice.add(_extraValues[0]);
                        userTasks.add(textControllerName.text);
                        customTimes.add(numControllerTime.toString());
                        setState(() {
                        });
                      },
                      items:
                      extraItems.map<DropdownMenuItem<String>>((String value){
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                  )
                ]
            ),
            ),
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
      ]
    );
  }
}

