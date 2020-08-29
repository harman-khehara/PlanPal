//Create wdiget for task input from user

import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/globals.dart';

String dropdownValue = Globals.dropdownValue;

class TaskRow extends StatefulWidget {
  String get time => dropdownValue;

  @override
  State<StatefulWidget> createState() => new _TaskRowState();
}

class _TaskRowState extends State<TaskRow> {
  var items = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'];
  List _listValues = ['1'];

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 240.0,
              child: TextFormField(
                decoration: const InputDecoration(
                    //contentPadding: EdgeInsets.symmetric(vertical: 25.0,),
                    hintText: "Enter a task",
                    icon: Icon(Icons.assignment)),
              ),
            ),
          ),
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
                      value: _listValues[0],
                      icon: Icon(Icons.expand_more),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.black),
                      onChanged: (String newValue) {
                        _listValues[0] = newValue;
                        dropdownValue = newValue;
                        setState(() {});
                      },
                      items:
                          items.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  )))
        ]),
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
    );
  }
}
