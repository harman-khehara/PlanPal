//Homepage for the app

import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/LearnMore1.dart';
import 'package:smart_schedule_creator/LearnMore2.dart';
import 'package:smart_schedule_creator/LearnMore3.dart';
import 'package:smart_schedule_creator/CreateSchedule1.dart';
import 'package:smart_schedule_creator/CreateSchedule2.dart';
import 'package:smart_schedule_creator/CreateSchedule3.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  //Opens the drawer
  void _openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }

  //Closes the drawer
  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  //Build the homepage
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Smart Schedule Creator', //App title
              style: TextStyle(
                fontFamily: 'Acme',
                color: Colors.white,
              )),
          centerTitle: true,
          backgroundColor: Colors.redAccent[400],
        ),

        /*Drawer which displays the full description for the app on a separate
          page
         */
        drawer: Drawer(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Container(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                  width: 395.0,
                  height: 500.0,
                  child: Material(
                      color: Colors.lightBlue[100],
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Colors.blueGrey,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "This personal care app is designed to manage work/study schedules efficiently using psychologically certified techniques. The app features three modes of auto-generated schedules: Non-custom schedules with two types, Longer Periods and Shorter Periods, and a Custom Schedule. With the exception of the custom schedule, the non-custom schedules cannot be modified once they've been generated. The non-custom schedules have restricted timings for studying activities based on the research behind studying for shorter versus longer periods of time.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontFamily: 'Karla',
                              ),
                            ),
                          ]))),
              RaisedButton(
                  onPressed: _closeDrawer,
                  child: const Text('Return to Homepage',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Acme',
                        fontSize: 16,
                      )),
                  color: Colors.redAccent[400],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24.0))))
            ])),

        //All widgets on the homepage of the app in a scrollable list
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            //The button which links to a full description of the app
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 25.0, 16.0, 16.0),
              child: Container(
                  color: Colors.white,
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                      height: 100.0,
                      width: 380.0,
                      child: Container(
                          child: FloatingActionButton(
                              onPressed: _openDrawer,
                              child: RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.lightBlue[900]),
                                    children: [
                                      TextSpan(
                                        text: 'Welcome ',
                                      ),
                                      TextSpan(
                                        text: 'to Smart Schedule Creator! ',
                                      ),
                                      TextSpan(
                                          text: 'Click here ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )),
                                      TextSpan(
                                          text:
                                              'to learn more about how you can create your very own productive study schedule.')
                                    ]),
                                textAlign: TextAlign.center,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              backgroundColor: Colors.lightBlue[100])))),
            ),

            //Short schedule' option
            Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                child: SizedBox(
                    width: 380,
                    height: 355.0,
                    child: Material(
                        color: Colors.lightBlue[100],
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(24.0),
                        shadowColor: Colors.blueGrey,
                        child: Column(children: <Widget>[
                          //Title box
                          Container(
                              padding: const EdgeInsets.all(10.0),
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                  child: Material(
                                      color: Colors.redAccent[400],
                                      elevation: 14.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: SizedBox(
                                          width: 380.0,
                                          height: 50.0,
                                          child: Center(
                                              child: Text(
                                                  'Short Study Schedule',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'Acme',
                                                    color: Colors.white,
                                                  ))))))),
                          //Description Box
                          Container(
                              padding: const EdgeInsets.all(10.0),
                              alignment: Alignment.bottomLeft,
                              child: SizedBox(
                                  child: Material(
                                      color: Colors.white,
                                      elevation: 14.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: SizedBox(
                                          width: 380.0,
                                          height: 200.0,
                                          child: Center(
                                              child: Text(
                                                  'Do you like working for short periods of time? Get more done in less time by using a short study schedule.',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color:
                                                        Colors.redAccent[400],
                                                  ))))))),
                          //'Lean More' and 'Create Schedule' buttons
                          ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LearnMore1()));
                                  },
                                  child: Text('LEARN MORE',
                                      style: TextStyle(
                                          color: Colors.lightBlue[900],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                                ),
                                RaisedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CreateSchedule1()));
                                    },
                                    child: Text('Create Short Study Schedule',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Acme',
                                          fontSize: 16,
                                        )),
                                    color: Colors.redAccent[400],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(24.0))))
                              ]),
                        ])))),

            //Long schedule option
            Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                child: SizedBox(
                    width: 380,
                    height: 355.0,
                    child: Material(
                        color: Colors.lightBlue[100],
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(24.0),
                        shadowColor: Colors.blueGrey,
                        child: Column(children: <Widget>[
                          //Title box
                          Container(
                              padding: const EdgeInsets.all(10.0),
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                  child: Material(
                                      color: Colors.redAccent[400],
                                      elevation: 14.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: SizedBox(
                                          width: 380.0,
                                          height: 50.0,
                                          child: Center(
                                              child: Text('Long Study Schedule',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'Acme',
                                                    color: Colors.white,
                                                  ))))))),
                          //Description Box
                          Container(
                              padding: const EdgeInsets.all(10.0),
                              alignment: Alignment.bottomLeft,
                              child: SizedBox(
                                  child: Material(
                                      color: Colors.white,
                                      elevation: 14.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: SizedBox(
                                          width: 380.0,
                                          height: 200.0,
                                          child: Center(
                                              child: Text(
                                                  'Like getting to the bottom of things? Spend more time working on what matters most by using a long study schedule.',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color:
                                                        Colors.redAccent[400],
                                                  ))))))),
                          //'Lean More' and 'Create Schedule' buttons
                          ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LearnMore2()));
                                  },
                                  child: Text('LEARN MORE',
                                      style: TextStyle(
                                          color: Colors.lightBlue[900],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                                ),
                                RaisedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CreateSchedule2()));
                                    },
                                    child: Text('Create Long Study Schedule',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Acme',
                                          fontSize: 16,
                                        )),
                                    color: Colors.redAccent[400],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(24.0))))
                              ]),
                        ])))),

            //Custom schedule option
            Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                child: SizedBox(
                    width: 380,
                    height: 355.0,
                    child: Material(
                        color: Colors.lightBlue[100],
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(24.0),
                        shadowColor: Colors.blueGrey,
                        child: Column(children: <Widget>[
                          //Title box
                          Container(
                              padding: const EdgeInsets.all(10.0),
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                  child: Material(
                                      color: Colors.redAccent[400],
                                      elevation: 14.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: SizedBox(
                                          width: 380.0,
                                          height: 50.0,
                                          child: Center(
                                              child: Text(
                                                  'Custom Study Schedule',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'Acme',
                                                    color: Colors.white,
                                                  ))))))),
                          //Description Box
                          Container(
                              padding: const EdgeInsets.all(10.0),
                              alignment: Alignment.bottomLeft,
                              child: SizedBox(
                                  child: Material(
                                      color: Colors.white,
                                      elevation: 14.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: SizedBox(
                                          width: 380.0,
                                          height: 200.0,
                                          child: Center(
                                              child: Text(
                                                  "Want more fluid schedules? Use a custom schedule to generate a timetable that works around time preferences you set.",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color:
                                                        Colors.redAccent[400],
                                                  ))))))),
                          //'Learn More' and 'Create Schedule' buttons
                          ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LearnMore3()));
                                  },
                                  child: Text('LEARN MORE',
                                      style: TextStyle(
                                          color: Colors.lightBlue[900],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                                ),
                                RaisedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CreateSchedule3()));
                                    },
                                    child: Text('Create Custom Study Schedule',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Acme',
                                          fontSize: 16,
                                        )),
                                    color: Colors.redAccent[400],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(24.0))))
                              ]),
                        ])))),
          ],
        ));
  }
}
