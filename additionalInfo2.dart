import 'package:flutter/material.dart';

class additionalInfo extends StatefulWidget {

  final List tasks;
  final List times;

  additionalInfo({Key key, @required this.tasks, @required this.times,}) : super(key: key);

  @override
  _additionalInfoState createState() => _additionalInfoState();
}

class _additionalInfoState extends State<additionalInfo> {

  @override
  Widget build(BuildContext context) {
    print(widget.tasks);
    print(widget.times);

    return Scaffold(
      appBar: AppBar(
        title: Text("Additional Information",
            style: TextStyle(fontFamily: 'Acme')),
        backgroundColor: Colors.redAccent[400],
      ),
    );
  }
}
