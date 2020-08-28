//Create short study schedule page

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateSchedule1 extends StatefulWidget {
  @override
  _CreateSchedule1State createState() => _CreateSchedule1State();
}

class _CreateSchedule1State extends State<CreateSchedule1> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create a Short Study Schedule",
            style: TextStyle(
              fontFamily: 'Acme',
            )),
        backgroundColor: Colors.redAccent[400],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent[400],
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Material(
                color: Colors.lightBlue[100],
                elevation: 14.0,
                borderRadius: BorderRadius.circular(24.0),
                shadowColor: Colors.blueGrey,
                child: ListView(scrollDirection: Axis.vertical, children: [
                  Column(children: [
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
                          side: BorderSide(width: 2.0, style: BorderStyle.solid, color: Colors.redAccent[400]),
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                        ),
                      ),
                      child: Center(
                        child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.expand_more),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.black),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>['One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Eleven', 'Twelve']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                      )
                    )
                    )
                  ]),

                    Center(child:
                    Divider(
                      color: Colors.redAccent[400],
                      height: 20,
                      thickness: 2,
                      indent: 0,
                      endIndent: 0,
                    ),
                    )

        ],
                  ),
                ]))),
      ),
    );
  }
}
