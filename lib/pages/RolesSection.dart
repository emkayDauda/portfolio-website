import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'dart:svg';

class Roles extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RolesState();
}

class RolesState extends State<Roles> {
  final _padding = Padding(
    padding: EdgeInsets.all(16.0),
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _padding,
          Text(
            'The roles I take',
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.black,
            ),
          ),
          _padding,
          Card(
            elevation: 2.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 600.0,
                  width: 420.0,
                  decoration: BoxDecoration(border: Border.all()),
                ),
                Container(
                  height: 600.0,
                  width: 420.0,
                  decoration: BoxDecoration(border: Border.all()),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
