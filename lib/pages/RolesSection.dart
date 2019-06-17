import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

class Roles extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RolesState();
}

class RolesState extends State<Roles> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Roles I take',
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
