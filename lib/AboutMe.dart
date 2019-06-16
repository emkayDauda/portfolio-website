import 'package:flutter_web/material.dart';

import 'HomePage.dart';

class AboutMe extends StatelessWidget {
  final int flexSize = 3;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[600],
      child: Padding(
        padding: const EdgeInsets.only(top: 80.0, bottom: 80.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
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
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HomePageState().buildTitleText(
              'What I look like!',
              Colors.white,
              size: 25.0,
            ),
            Image.asset('images/curve-arrow-large.png')
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Expanded(
              flex: 2,
              child: ClipOval(
                child: Image.asset(
                  'images/official_photo.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
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
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        Text(''),
        Text(
          'I am currently studying at African Leadership University where I will soon finish my education as a beginner and set out as a "professional" wizard!',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
