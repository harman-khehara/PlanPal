//COLLECTS INFO ON SCHEDULE SPECIFICATIONS

import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/UnavailableTimes.dart';



class CreateSchedule3 extends StatefulWidget {

  @override
  _CreateSchedule3State createState() => _CreateSchedule3State();
}

class _CreateSchedule3State extends State<CreateSchedule3> {

  TimeOfDay _bedtime = new TimeOfDay.now();
  TimeOfDay _waketime = new TimeOfDay.now();


  Future<Null> _selectsleeptime(BuildContext context) async {
    final TimeOfDay pickedbed = await showTimePicker(
      context: context,
      initialTime: _bedtime,
    );
    if (pickedbed != null && pickedbed != _bedtime) {
      setState((){
        _bedtime = pickedbed;
      });
    }
  }

  Future<Null> _selectwaketime(BuildContext context) async {
    final TimeOfDay pickedwake = await showTimePicker(
      context: context,
      initialTime: _waketime,
    );
    if (pickedwake != null && pickedwake != _waketime) {
      setState((){
        _waketime = pickedwake;
      });
    }
  }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: Text("Create a Custom Study Schedule",
                style: TextStyle(fontFamily: 'Acme')),
            backgroundColor: Colors.redAccent[400],
          ),
          bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.redAccent[400], items: [
            new BottomNavigationBarItem(
              icon: new IconButton(
                icon: Icon(Icons.chevron_left, color: Colors.white),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreateSchedule3()));
                },
              ),
              title: new Text(
                "Back",
                style: TextStyle(color: Colors.white),
              ),
            ),
            new BottomNavigationBarItem(
              icon: new IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UnavailableTimes(
                            bedtime: _bedtime,
                            waketime: _waketime,
                          )
                      ));
                },
                icon: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ),
              title: new Text(
                "Next",
                style: TextStyle(color: Colors.white),
              ),
            )
          ]),

          body: ListView(
              scrollDirection: Axis.vertical,
              children: [ //children of ListView
                Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(
                              16.0, 25.0, 16.0, 16.0),
                          child: SizedBox(
                              height: 400.0,
                              width: 400.0,
                              child: Material(
                                  borderRadius: BorderRadius.circular(24.0),
                                  color: Colors.lightBlue[100],
                                  elevation: 14.0,
                                  shadowColor: Colors.blueGrey,
                                  child: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          25.0, 20.0, 25.0, 13.0),
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceEvenly,
                                          children: [
                                            Text(
                                                "STEP 1: Select the hours for when you go to sleep and wake up. This sets the min and max limits for the schedule. "
                                                    "Keep in mind that the schedule will start one hour after your wake up time and end one hour before your sleep time, with"
                                                    "all times rounded to the nearest hour.",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                            Text(
                                                "STEP 2: Select the ranges of unavailability for your schedule. This makes sure no activities will be scheduled during those times.",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                            Text(
                                                "STEP 3: Add tasks to add to your schedule. Personalize your tasks by adding specifications.",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black))
                                          ] //column children
                                      )
                                  )
                              )
                          )
                      ),
                      Padding(padding: const EdgeInsets.fromLTRB(
                          16.0, 25.0, 16.0, 16.0),
                          child: SizedBox(
                              height: 150.0,
                              width: 400.0,
                              child: Material(
                                  borderRadius: BorderRadius.circular(24.0),
                                  color: Colors.lightBlue[100],
                                  elevation: 14.0,
                                  shadowColor: Colors.blueGrey,
                                  child: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          25.0, 20.0, 25.0, 13.0),
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceEvenly,
                                          children: [
                                            Text(
                                                "Select your sleep and wake times:",
                                                style: TextStyle(
                                                    fontFamily: 'Acme',
                                                    fontSize: 20,
                                                    color: Colors
                                                        .redAccent[400])),
                                            Text("Click on the icons! Respectively, your wake time and sleep time should be in AM and PM.", textAlign: TextAlign.center,),
                                            Row(mainAxisAlignment: MainAxisAlignment
                                                .spaceEvenly,
                                                children: [
                                                  //wake time -------------------------------------------
                                                  IconButton(icon: Icon(
                                                      Icons.brightness_high,
                                                      color: Colors.yellow),
                                                      onPressed: () {
                                                        _selectwaketime(context);
                                                      }),
                                                  Text("${_waketime.format(context)}",
                                                      style: TextStyle(
                                                        fontFamily: 'Acme',
                                                        fontSize: 18,)),
                                                  //bedtime -----------------------------------------
                                                  IconButton(icon: Icon(
                                                      Icons.brightness_3,
                                                      color: Colors
                                                          .deepPurpleAccent),
                                                      onPressed: () {
                                                        _selectsleeptime(
                                                            context);
                                                      }),
                                                      Text("${_bedtime.format(context)}",
                                                          style: TextStyle(
                                                            fontFamily: 'Acme',
                                                            fontSize: 18,)
                                                      ),
                                                ] //children of Row
                                            ),
                                          ]
                                      )
                                  )
                              )
                          )

                      ),
                    ] //children of Column
                )
              ] //children of ListView
          )
      );
    }
}




