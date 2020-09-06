
/// This page is to generate user unavailability ranges and deploy selection functions for each day

import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/CreateSchedule3.dart';
import 'package:smart_schedule_creator/TaskRow3.dart';


class UnavailableTimes extends StatefulWidget {

  final TimeOfDay bedtime;
  final TimeOfDay waketime;


  UnavailableTimes({
    Key key,
    @required this.bedtime,
    @required this.waketime,
  }) : super(key: key);

  @override
  _UnavailableTimesState createState() => _UnavailableTimesState();
}

class _UnavailableTimesState extends State<UnavailableTimes> {

  List unavTimesSun = [];
  List unavTimesMon = [];
  List unavTimesTue = [];
  List unavTimesWed = [];
  List unavTimesThu = [];
  List unavTimesFri = [];
  List unavTimesSat = [];
  List unavailabilityTimes = [];

  Set<String> displaytimes = {};

  //Sets to counteract doubletap feature for now
  Set<int> positionSun = {};
  Set<int> positionMon = {};
  Set<int> positionTue = {};
  Set<int> positionWed = {};
  Set<int> positionThu = {};
  Set<int> positionFri = {};
  Set<int> positionSat = {};


  @override
  Widget build(BuildContext context) {
    TimeOfDay bedtime = widget.bedtime;
    TimeOfDay waketime = widget.waketime;

    List numberOfGrids (unavailabilityTimes) {
      double _numberofgrids;
      double _newwaketime = waketime.hour.toDouble();
      double _newbedtime = bedtime.hour.toDouble();
      double endbedtime = _newbedtime -= 1; //end schedule 1 hour before
      double endwaketime = _newwaketime += 1; // start schedule 1 hour after
      List unavTimes = [];
      if (endwaketime < endbedtime) {
        _numberofgrids = endbedtime -= endwaketime;
      } else {
        _numberofgrids = endwaketime -= endbedtime;
      }

      //Set intial list value
      double addtime = endwaketime;
      double plusone = addtime;
      plusone +=1;
      if (addtime > 12){
        addtime -= 12;
        double plusone = addtime;
        plusone +=1;
        unavTimes.add("$addtime PM - $plusone PM");
      }
      else if(addtime < 12){
        double plusone = addtime;
        plusone +=1;
        if(addtime == 12){
          unavTimes.add("$addtime PM - 1.0 PM");}
        else if (plusone == 12){unavTimes.add("$addtime AM - $plusone PM");
        }
        else if(addtime < 12) {unavTimes.add("$addtime AM - $plusone AM");
        }
      }
      else if(addtime == 12){
        unavTimes.add("$addtime PM - 1.0 PM");
      }


      for (var i = 0; i < _numberofgrids;i++)
        {
          double addtime = endwaketime +=1;
          if (addtime > 12 ) {
            addtime -= 12;
            double plusone = addtime;
            plusone +=1;
            unavTimes.add("$addtime PM - $plusone PM");
          }

          else if (addtime < 12) {
            double plusone = addtime;
            plusone +=1;
            if(addtime == 12){
              unavTimes.add("$addtime PM - 1.0 PM");}
            else if (plusone == 12){unavTimes.add("$addtime AM - $plusone PM");
            }
            else if(addtime < 12) {unavTimes.add("$addtime AM - $plusone AM");
            }
          }

          else if (addtime == 12) {
            unavTimes.add("$addtime PM - 1.0 PM");
          }

        }
      return unavTimes;
    }

    unavTimesSun = numberOfGrids(unavailabilityTimes);
    unavTimesMon = numberOfGrids(unavailabilityTimes);
    unavTimesTue = numberOfGrids(unavailabilityTimes);
    unavTimesWed = numberOfGrids(unavailabilityTimes);
    unavTimesThu = numberOfGrids(unavailabilityTimes);
    unavTimesFri = numberOfGrids(unavailabilityTimes);
    unavTimesSat = numberOfGrids(unavailabilityTimes);

    String textHolder = "Your selected unavailability times will display here: $displaytimes";
    _changeText () {
      setState(() {
        textHolder = "Your selected unavailability times will display here: $displaytimes";
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Unavailability",
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
                      builder: (context) => TaskRow3(

                      )));
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
          children: <Widget>[
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(16.0, 25.0, 16.0, 16.0),
                child: Text("$textHolder", style: TextStyle(fontFamily: 'Acme', fontSize: 17,)),
              ),
              SizedBox(height: 20.0,),
              ExpansionTile(title: Text ("SUNDAY", style: TextStyle(fontFamily: 'Acme', fontSize: 23,)),
                children: [
                  for(var i = 0; i < unavTimesSun.length; i++ )
                    Card(child: ListTile(
                        title: Text(unavTimesSun[i].toString()),
                        onTap: () {
                          positionSun.add(i);
                          displaytimes.add("Sunday: " + unavTimesSun[i].toString());
                          _changeText();
                        },
                    )),
                ]
              ),
              SizedBox(height: 20.0,),
              ExpansionTile(title: Text ("MONDAY", style: TextStyle(fontFamily: 'Acme', fontSize: 23,)),
                children: [
                  for(var i = 0; i < unavTimesMon.length; i++ ) Card(child: ListTile(
                      title: Text(unavTimesMon[i].toString()),
                          onTap: () {
                            positionMon.add(i);
                            displaytimes.add("Monday: " + unavTimesSun[i].toString());
                            _changeText();
                          },
                  )),
                ]
              ),
              SizedBox(height: 20.0,),
              ExpansionTile(title: Text ("TUESDAY", style: TextStyle(fontFamily: 'Acme', fontSize: 23,)),
                children: [
                  for(var i = 0; i < unavTimesTue.length; i++ ) Card(child: ListTile(
                      title: Text(unavTimesTue[i].toString()),
                      onTap: () {
                        positionTue.add(i);
                        displaytimes.add("Tuesday: " + unavTimesSun[i].toString());
                        _changeText();
                      },
                  )),
                ],
              ),
              SizedBox(height: 20.0,),
              ExpansionTile(title: Text ("WEDNESDAY", style: TextStyle(fontFamily: 'Acme', fontSize: 23,)),
                children: [
                  for(var i = 0; i < unavTimesWed.length; i++ ) Card(child: ListTile(
                      title: Text(unavTimesWed[i].toString()),
                      onTap: () {
                        positionWed.add(i);
                        displaytimes.add("Wednesday: " +unavTimesSun[i].toString());
                        _changeText();
                      },
                  )),
                ],
              ),
              SizedBox(height: 20.0,),
              ExpansionTile(title: Text ("THURSDAY", style: TextStyle(fontFamily: 'Acme', fontSize: 23,)),
                children: [
                  for(var i = 0; i < unavTimesThu.length; i++ ) Card(child: ListTile(
                      title: Text(unavTimesThu[i].toString()),
                      onTap: () {
                        positionThu.add(i);
                        displaytimes.add("Thursday: " + unavTimesSun[i].toString());
                        _changeText();
                      },
                  )),
                ],
              ),
              SizedBox(height: 20.0,),
              ExpansionTile(title: Text ("FRIDAY", style: TextStyle(fontFamily: 'Acme', fontSize: 23,)),
                children: [
                  for(var i = 0; i < unavTimesFri.length; i++ ) Card(child: ListTile(
                      title: Text(unavTimesFri[i].toString()),
                      onTap: () {
                        positionFri.add(i);
                        displaytimes.add("Friday: " + unavTimesSun[i].toString());
                        _changeText();
                      },
                  )),
                ],
              ),
              SizedBox(height: 20.0,),
              ExpansionTile(title: Text ("SATURDAY", style: TextStyle(fontFamily: 'Acme', fontSize: 23,)),
                children: [
                  for(var i = 0; i < unavTimesSat.length; i++ ) Card(child: ListTile(
                      title: Text(unavTimesSat[i].toString()),
                      onTap: () {
                        positionSat.add(i);
                        displaytimes.add("Saturday: " + unavTimesSun[i].toString());
                        _changeText();
                      },
                  )),
                ],
              ),
            ],
            )
          ]
      )
    );
  }
}
