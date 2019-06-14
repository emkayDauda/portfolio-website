import 'package:flutter_web/material.dart';

import 'HomePage.dart';

class AboutMe extends StatelessWidget {
    final int flexSize = 3;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[600],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(),
            flex: flexSize,
          ),
          AboutSection(),
          ProfileSection(),
          Expanded(
            child: Container(),
            flex: flexSize,
          )
        ],
      ),
    );
  }

  Expanded ProfileSection() {
    return Expanded(
          flex: flexSize,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: _buildProfileColumn(),
          ),
        );
  }

  Expanded AboutSection() {
    return Expanded(
          flex: flexSize,
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: _buildAboutColumn(),
          ),
        );
  }

  Column _buildProfileColumn() {
    return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                HomePageState().buildTitleText(
                  'What I look like!',
                  Colors.white,
                  size: 25.0,
                )
              ],
            );
  }

  Column _buildAboutColumn() {
    return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                HomePageState().buildTitleText(
                  'A few details about me...',
                  Colors.white,
                  size: 35.0,
                ),
                Text(
                  "I started my journey into the world of digital wizardy 7 years ago. I've done freelance work as well as intern for a few companies which in my journey has led me to grow into a better wizard and collaborated with other great magicians along the way.",
                  softWrap: true,
                ),
                Text(''),
                Text('I am currently studying at African Leadership University where I will soon finish my education as a beginner and set out as a "professional" wizard!')
              ],
            );
  }
}
