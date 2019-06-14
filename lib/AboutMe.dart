import 'package:flutter_web/material.dart';

import 'HomePage.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.amber[600],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  HomePageState().buildTitleText(
                    'A few details about me...',
                    Colors.white,
                    size: 35.0,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  HomePageState().buildTitleText(
                    'What I look like!',
                    Colors.white,
                    size: 25.0,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
