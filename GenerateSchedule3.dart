import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/CreateSchedule3.dart';
import 'package:smart_schedule_creator/GeneratingTasks.dart';
import 'package:smart_schedule_creator/homepage.dart';
import 'package:smart_schedule_creator/UnavailableTimes.dart';
import 'package:smart_schedule_creator/globals.dart';
import 'package:smart_schedule_creator/TaskRow3.dart';

class GenerateSchedule3 extends StatefulWidget {

  final List unavTimesSun;
  final List unavTimesMon;
  final List unavTimesTue;
  final List unavTimesWed;
  final List unavTimesThu;
  final List unavTimesFri;
  final List unavTimesSat;
  final TimeOfDay bedtime;
  final TimeOfDay waketime;
  final Set positionSun;
  final Set positionMon;
  final Set positionTue;
  final Set positionWed;
  final Set positionThu;
  final Set positionFri;
  final Set positionSat;

  GenerateSchedule3({
    Key key,
    @required this.unavTimesSun,
    @required this.unavTimesMon,
    @required this.unavTimesTue,
    @required this.unavTimesWed,
    @required this.unavTimesThu,
    @required this.unavTimesFri,
    @required this.unavTimesSat,
    @required this.bedtime,
    @required this.waketime,
    @required this.positionSun,
    @required this.positionMon,
    @required this.positionTue,
    @required this.positionWed,
    @required this.positionThu,
    @required this.positionFri,
    @required this.positionSat,

  }) : super(key: key);

  @override
  _GenerateSchedule3State createState() => _GenerateSchedule3State();
}


class _GenerateSchedule3State extends State<GenerateSchedule3> {

  List unavailabilityTimes = [];
  List unavTimesSun2 = [];

  @override
  Widget build(BuildContext context) {
    TimeOfDay bedtime = widget.bedtime;
    TimeOfDay waketime = widget.waketime;
    List unavTimesSun = widget.unavTimesSun;
    List unavTimesMon = widget.unavTimesMon;
    List unavTimesTue = widget.unavTimesTue;
    List unavTimesWed = widget.unavTimesWed;
    List unavTimesThu = widget.unavTimesThu;
    List unavTimesFri = widget.unavTimesFri;
    List unavTimesSat = widget.unavTimesSat;
    Set positionSun = widget.positionSun;
    Set positionMon = widget.positionMon;
    Set positionTue = widget.positionTue;
    Set positionWed = widget.positionWed;
    Set positionThu = widget.positionThu;
    Set positionFri = widget.positionFri;
    Set positionSat = widget.positionSat;

    /// FUNCTIONS TO DETERMINE UNAVAILABILITY TIMES and ADD TASKS
    addTasksSunday(unavailabilityTimes) {
      //Determine unavailability
      if (positionSun.isNotEmpty == true) {
        for (var i = 0; i < positionSun.length; i++) {
          unavTimesSun[positionSun.elementAt(i)] =
          "${unavTimesSun[positionSun.elementAt(i)]}: Unavailable";
        }
        //Add tasks
        if (Globals.customTasks.length > 0) {
          for (var i = 0; i < Globals.customTasks.length; i++) {
              if (Globals.customDaySunday.isNotEmpty && Globals.customDaySunday.contains(Globals.customTasks[i]) == true) {
                for (var t = 0; t < Globals.customTimes[i]; t++) {
                  for(var s = 0; s < 23; s++){
                    if (positionSun.contains(s) == false && unavTimesSun.length >= s) {
                      unavTimesSun[s] = "${unavTimesSun[s]}: ${Globals.customTasks[i]}";
                      positionSun.add(s);
                      break;
                    }
                  }
                }
              }
          }
        }
      } else {
        for (var i = 0; i < Globals.customTasks.length; i++) {
          if(Globals.customDaySunday.isNotEmpty && Globals.customDaySunday.contains(Globals.customTasks[i]) == true){
              for (var t = 0; t < Globals.customTimes[i]; t++) {
                for(var s = 0; s < 23; s++){
                  if (positionSun.contains(s) == false && unavTimesSun.length >= s) {
                    unavTimesSun[s] = "${unavTimesSun[s]}: ${Globals.customTasks[i]}";
                    positionSun.add(s);
                    break;
                  }
                }
              }
            }
        }
      }
      return unavTimesSun;
    }
    unavTimesSun2 = addTasksSunday(unavailabilityTimes);

    addTasksMonday(unavailabilityTimes) {
      //Determine unavailability
      if (positionMon.isNotEmpty == true) {
        for (var i = 0; i < positionMon.length; i++) {
          unavTimesMon[positionMon.elementAt(i)] =
          "${unavTimesMon[positionMon.elementAt(i)]}: Unavailable";
        }
        //Add tasks
        if (Globals.customTasks.length > 0) {
          for (var i = 0; i < Globals.customTasks.length; i++) {
            if(Globals.customDayMonday.isNotEmpty && Globals.customDayMonday.contains(Globals.customTasks[i]) == true){
                for (var t = 0; t < Globals.customTimes[i]; t++) {
                  for(var s = 0; s < 23; s++){
                    if (positionMon.contains(s) == false && unavTimesMon.length >= s) {
                      unavTimesMon[s] = "${unavTimesMon[s]}: ${Globals.customTasks[i]}";
                      positionMon.add(s);
                      break;
                    }
                  }
                }
              }
          }
        }
      } else {
        for (var i = 0; i < Globals.customTasks.length; i++) {
          if(Globals.customDayMonday.isNotEmpty && Globals.customDayMonday.contains(Globals.customTasks[i]) == true){
                for (var t = 0; t < Globals.customTimes[i]; t++) {
                  for(var s = 0; s < 23; s++){
                    if (positionMon.contains(s) == false && unavTimesMon.length >= s) {
                      unavTimesMon[s] = "${unavTimesMon[s]}: ${Globals.customTasks[i]}";
                      positionMon.add(s);
                      break;
                    }
                  }
                }
              }
          }
        }
      return unavTimesMon;
    }
    unavTimesMon = addTasksMonday(unavailabilityTimes);

    addTasksTuesday(unavailabilityTimes) {
      if (positionTue.isNotEmpty == true) {
        for (var i = 0; i < positionTue.length; i++) {
          unavTimesTue[positionTue.elementAt(i)] =
          "${unavTimesTue[positionTue.elementAt(i)]}: Unavailable";
        }
        //Add tasks
        if (Globals.customTasks.length > 0) {
          for (var i = 0; i < Globals.customTasks.length; i++) {
            if (Globals.customDayTuesday.isNotEmpty && Globals.customDayTuesday.contains(Globals.customTasks[i]) == true) {
              for (var t = 0; t < Globals.customTimes[i]; t++) {
                for(var s = 0; s < 23; s++){
                  if (positionTue.contains(s) == false && unavTimesTue.length >= s) {
                    unavTimesTue[s] = "${unavTimesTue[s]}: ${Globals.customTasks[i]}";
                    positionTue.add(s);
                    break;
                  }
                }
              }
            }
          }
        }
      } else {
        for (var i = 0; i < Globals.customTasks.length; i++) {
          if (Globals.customDayTuesday.isNotEmpty && Globals.customDayTuesday.contains(Globals.customTasks[i]) == true) {
            for (var t = 0; t < Globals.customTimes[i]; t++) {
              for(var s = 0; s < 23; s++){
                if (positionTue.contains(s) == false && unavTimesTue.length >= s) {
                  unavTimesTue[s] = "${unavTimesTue[s]}: ${Globals.customTasks[i]}";
                  positionTue.add(s);
                  break;
                }
              }
            }
          }
        }
      }
      return unavTimesTue;
    }
    unavTimesTue = addTasksTuesday(unavailabilityTimes);

    addTasksWednesday(unavailabilityTimes) {
      if (positionWed.isNotEmpty == true) {
        for (var i = 0; i < positionWed.length; i++) {
          unavTimesWed[positionWed.elementAt(i)] =
          "${unavTimesWed[positionWed.elementAt(i)]}: Unavailable";
        }
        //Add tasks
        if (Globals.customTasks.length > 0) {
          for (var i = 0; i < Globals.customTasks.length; i++) {
            if (Globals.customDayWednesday.isNotEmpty && Globals.customDayWednesday.contains(Globals.customTasks[i]) == true) {
              for (var t = 0; t < Globals.customTimes[i]; t++) {
                for(var s = 0; s < 23; s++){
                  if (positionWed.contains(s) == false && unavTimesWed.length >= s) {
                    unavTimesWed[s] = "${unavTimesWed[s]}: ${Globals.customTasks[i]}";
                    positionWed.add(s);
                    break;
                  }
                }
              }
            }
          }
        }
      } else {
        for (var i = 0; i < Globals.customTasks.length; i++) {
          if (Globals.customDayWednesday.isNotEmpty && Globals.customDayWednesday.contains(Globals.customTasks[i]) == true) {
            for (var t = 0; t < Globals.customTimes[i]; t++) {
              for(var s = 0; s < 23; s++){
                if (positionWed.contains(s) == false && unavTimesWed.length >= s) {
                  unavTimesWed[s] = "${unavTimesWed[s]}: ${Globals.customTasks[i]}";
                  positionWed.add(s);
                  break;
                }
              }
            }
          }
        }
      }
      return unavTimesWed;
    }
    unavTimesWed = addTasksWednesday(unavailabilityTimes);

    addTasksThursday(unavailabilityTimes) {
      if (positionThu.isNotEmpty == true) {
        for (var i = 0; i < positionThu.length; i++) {
          unavTimesThu[positionThu.elementAt(i)] =
          "${unavTimesThu[positionThu.elementAt(i)]}: Unavailable";
        }
        //Add tasks
        if (Globals.customTasks.length > 0) {
          for (var i = 0; i < Globals.customTasks.length; i++) {
            if (Globals.customDayThursday.isNotEmpty && Globals.customDayThursday.contains(Globals.customTasks[i]) == true) {
              for (var t = 0; t < Globals.customTimes[i]; t++) {
                for(var s = 0; s < 23; s++){
                  if (positionThu.contains(s) == false && unavTimesThu.length >= s) {
                    unavTimesThu[s] = "${unavTimesThu[s]}: ${Globals.customTasks[i]}";
                    positionThu.add(s);
                    break;
                  }
                }
              }
            }
          }
        }
      }else{
        for (var i = 0; i < Globals.customTasks.length; i++) {
          if (Globals.customDayThursday.isNotEmpty && Globals.customDayThursday.contains(Globals.customTasks[i]) == true) {
            for (var t = 0; t < Globals.customTimes[i]; t++) {
              for(var s = 0; s < 23; s++){
                if (positionThu.contains(s) == false && unavTimesThu.length >= s) {
                  unavTimesThu[s] = "${unavTimesThu[s]}: ${Globals.customTasks[i]}";
                  positionThu.add(s);
                  break;
                }
              }
            }
          }
        }
      }
      return unavTimesThu;
    }
    unavTimesThu = addTasksThursday(unavailabilityTimes);

    addTasksFriday(unavailabilityTimes) {
      if (positionFri.isNotEmpty == true) {
        for (var i = 0; i < positionFri.length; i++) {
          unavTimesFri[positionFri.elementAt(i)] =
          "${unavTimesFri[positionFri.elementAt(i)]}: Unavailable";
        }
        //Add tasks
        if (Globals.customTasks.length > 0) {
          for (var i = 0; i < Globals.customTasks.length; i++) {
            if (Globals.customDayFriday.isNotEmpty && Globals.customDayFriday.contains(Globals.customTasks[i]) == true) {
              for (var t = 0; t < Globals.customTimes[i]; t++) {
                for(var s = 0; s < 23; s++){
                  if (positionFri.contains(s) == false && unavTimesFri.length >= s) {
                    unavTimesFri[s] = "${unavTimesFri[s]}: ${Globals.customTasks[i]}";
                    positionFri.add(s);
                    break;
                  }
                }
              }
            }
          }
        }
      }else{
        for (var i = 0; i < Globals.customTasks.length; i++) {
          if (Globals.customDayFriday.isNotEmpty && Globals.customDayFriday.contains(Globals.customTasks[i]) == true) {
            for (var t = 0; t < Globals.customTimes[i]; t++) {
              for(var s = 0; s < 23; s++){
                if (positionFri.contains(s) == false && unavTimesFri.length >= s) {
                  unavTimesFri[s] = "${unavTimesFri[s]}: ${Globals.customTasks[i]}";
                  positionFri.add(s);
                  break;
                }
              }
            }
          }
        }
      }
      return unavTimesFri;
    }
    unavTimesFri = addTasksFriday(unavailabilityTimes);

    addTasksSaturday(unavailabilityTimes) {
      if (positionSat.isNotEmpty == true) {
        for (var i = 0; i < positionSat.length; i++) {
          unavTimesSat[positionSat.elementAt(i)] =
          "${unavTimesSat[positionSat.elementAt(i)]}: Unavailable";
        }
        //Add tasks
        if (Globals.customTasks.length > 0) {
          for (var i = 0; i < Globals.customTasks.length; i++) {
            if (Globals.customDaySaturday.isNotEmpty && Globals.customDaySaturday.contains(Globals.customTasks[i]) == true) {
              for (var t = 0; t < Globals.customTimes[i]; t++) {
                for(var s = 0; s < 23; s++){
                  if (positionSat.contains(s) == false && unavTimesSat.length >= s) {
                    unavTimesSat[s] = "${unavTimesSat[s]}: ${Globals.customTasks[i]}";
                    positionSat.add(s);
                    break;
                  }
                }
              }
            }
          }
        }
      } else{
        for (var i = 0; i < Globals.customTasks.length; i++) {
          if (Globals.customDaySaturday.isNotEmpty && Globals.customDaySaturday.contains(Globals.customTasks[i]) == true) {
            for (var t = 0; t < Globals.customTimes[i]; t++) {
              for(var s = 0; s < 23; s++){
                if (positionSat.contains(s) == false && unavTimesSat.length >= s) {
                  unavTimesSat[s] = "${unavTimesSat[s]}: ${Globals.customTasks[i]}";
                  positionSat.add(s);
                  break;
                }
              }
            }
          }
        }
      }
      return unavTimesSat;
    }
    unavTimesSat = addTasksSaturday(unavailabilityTimes);

    return Scaffold(
        appBar: AppBar(
        title: Text("Your Custom Study Schedule",
        style: TextStyle(fontFamily: 'Acme')),
    backgroundColor: Colors.redAccent[400],
    ),

      bottomNavigationBar:
      BottomNavigationBar(backgroundColor: Colors.redAccent[400],
          items: [
            new BottomNavigationBarItem(
              icon: new IconButton(
                icon: Icon(Icons.chevron_left, color: Colors.white),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GeneratingTasks(
                        bedtime: bedtime,
                        waketime: waketime,
                      )));
                },
              ),
              title: new Text(
                "Back",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            new BottomNavigationBarItem(
              icon: new IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage()));
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              title: new Text(
                "Home",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,),
              ),
            )
          ]),
          body: ListView(scrollDirection: Axis.vertical,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    color: Colors.lightBlue[100],
                    elevation: 14.0,
                    shadowColor: Colors.blueGrey,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("SUNDAY", textAlign: TextAlign.center,style: TextStyle(color: Colors.redAccent[400],fontFamily: 'Acme', fontSize: 23)),
                        for(var i = 0; i< unavTimesSun2.length; i++) Card(child: ListTile(title: Text(unavTimesSun2[i].toString()))),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue[100],
                    elevation: 14.0,
                    shadowColor: Colors.blueGrey,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("MONDAY", textAlign: TextAlign.center,style: TextStyle(color: Colors.redAccent[400],fontFamily: 'Acme', fontSize: 23)),
                        for(var i = 0; i< unavTimesMon.length; i++) Card(child: ListTile(title: Text(unavTimesMon[i].toString()))),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue[100],
                    elevation: 14.0,
                    shadowColor: Colors.blueGrey,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("TUESDAY", textAlign: TextAlign.center,style: TextStyle(color: Colors.redAccent[400],fontFamily: 'Acme', fontSize: 23)),
                        for(var i = 0; i< unavTimesTue.length; i++) Card(child: ListTile(title: Text(unavTimesTue[i].toString()))),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue[100],
                    elevation: 14.0,
                    shadowColor: Colors.blueGrey,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("WEDNESDAY", textAlign: TextAlign.center,style: TextStyle(color: Colors.redAccent[400],fontFamily: 'Acme', fontSize: 23)),
                        for(var i = 0; i< unavTimesWed.length; i++) Card(child: ListTile(title: Text(unavTimesWed[i].toString()))),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue[100],
                    elevation: 14.0,
                    shadowColor: Colors.blueGrey,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("THURSDAY", textAlign: TextAlign.center,style: TextStyle(color: Colors.redAccent[400],fontFamily: 'Acme', fontSize: 23)),
                        for(var i = 0; i< unavTimesThu.length; i++) Card(child: ListTile(title: Text(unavTimesThu[i].toString()))),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue[100],
                    elevation: 14.0,
                    shadowColor: Colors.blueGrey,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("FRIDAY", textAlign: TextAlign.center,style: TextStyle(color: Colors.redAccent[400],fontFamily: 'Acme', fontSize: 23)),
                        for(var i = 0; i< unavTimesFri.length; i++) Card(child: ListTile(title: Text(unavTimesFri[i].toString()))),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue[100],
                    elevation: 14.0,
                    shadowColor: Colors.blueGrey,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("SATURDAY", textAlign: TextAlign.center,style: TextStyle(color: Colors.redAccent[400],fontFamily: 'Acme', fontSize: 23)),
                        for(var i = 0; i< unavTimesSat.length; i++) Card(child: ListTile(title: Text(unavTimesSat[i].toString()))),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
    );
  }
}
