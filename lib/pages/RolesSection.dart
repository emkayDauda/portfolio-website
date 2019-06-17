import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'dart:svg';

import 'package:flutter_web/painting.dart';

class Roles extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RolesState();
}

class RolesState extends State<Roles> {
  final _padding = Padding(
    padding: EdgeInsets.all(16.0),
  );
  final _smallPadding = Padding(
    padding: EdgeInsets.only(top: 4.0),
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
                //   height: 600.0,
                  width: 420.0,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      _padding,
                      Image.asset(
                        'images/desk.png',
                        width: 200,
                        fit: BoxFit.fill,
                        height: 150,
                      ),
                      _padding,
                      Text(
                        'Mobile Developer',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.amber[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      _buildLongText(
                        'I love to create the whole user experience, most of the times from scratch typically allowing me to craft a great experience.',
                      ),
                      _buildSubtitleText('My Toolset:'),
                      _smallPadding,
                      _buildLongText('SCSS, PUG, (ES2***) Javascript, React, Vue, Python, Django, Express, C++ and so much more.'),
                      _buildSubtitleText('My Preferred Armory'),
                      _smallPadding,
                      _buildLongText('Fimga'),
                      _buildLongText('Fimga'),
                      _buildLongText('Fimga'),
                      _buildLongText('Fimga'),
                      _buildLongText('Fimga'),
                      _buildLongText('Fimga'),
                      _buildLongText('Fimga'),
                      _buildLongText('Fimga'),
                      _buildLongText('Fimga'),
                    ],
                  ),
                ),
                Container(
                //   height: 600.0,
                  width: 420.0,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      _padding,
                      Image.asset(
                        'images/mortarboard.png',
                        width: 200,
                        fit: BoxFit.fill,
                        height: 150,
                      ),
                      _padding,
                      Text(
                        'Student',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.amber[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      _buildLongText(
                        'Student at heart, I try to mentor others and constantly seek self-improvement in order to be the best I can be.',
                      ),
                      _buildSubtitleText('Where I do my learning :'),
                      _smallPadding,
                      _buildLongText('SCSS, PUG, (ES2***) Javascript, React, Vue, Python, Django, Express, C++ and so much more.'),
                      _buildSubtitleText('MOAR stats:'),
                      _smallPadding,
                      _buildLongText('Fimga'),
                      _buildLongText('Fimga'),
                      _buildLongText('Fimga'),
                      _buildLongText('Fimga'),
                      _buildLongText('Fimga'),
                      _buildLongText('Fimga'),
                      _buildLongText('Fimga'),
                      _buildLongText('Fimga'),
                      _buildLongText('Fimga'),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  SizedBox _buildLongText(String text) {
    return SizedBox(
      width: 320.0,
      child: Text(
        text,
        softWrap: true,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }

  Padding _buildSubtitleText(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: SizedBox(
        width: 320.0,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
