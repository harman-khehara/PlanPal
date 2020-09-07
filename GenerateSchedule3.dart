import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/CreateSchedule3.dart';
import 'package:smart_schedule_creator/homepage.dart';
import 'package:smart_schedule_creator/UnavailableTimes.dart';
import 'package:smart_schedule_creator/TaskRow3.dart';

class GenerateSchedule3 extends StatefulWidget {

  final List unavTimesSun;
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
  @override
  Widget build(BuildContext context) {
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
                      MaterialPageRoute(builder: (context) => UnavailableTimes()));
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
          body: Text("boo"),
    );
  }
}
