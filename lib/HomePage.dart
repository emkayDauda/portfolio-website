import 'package:flutter_web/material.dart';

import 'AboutMe.dart';
import 'pages/RolesSection.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildMenuBar(),
              Align(
                alignment: Alignment(0, 0),
                child: IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      buildTitleText(
                        'Hi there, my name is',
                        Colors.amber[800],
                      ),
                      buildTitleText(
                        'Maaruf Kehinde Dauda.',
                        Colors.black,
                        size: 60.0,
                      ),
                      buildTitleText(
                        'I identify as a Mobile Developer.',
                        Colors.amber[800],
                        size: 60,
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          "images/workspace.jpg",
                          semanticLabel: 'Workspace image.',
                          height: 530.0,
                          width: 530.0,
                          alignment: Alignment.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              AboutMe(),
              Roles(),
            ],
          ),
        ),
        // ),
      ),
    );
  }

  Widget _buildMenuBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        _buildMenuItem('About Me'),
        _buildMenuItem('Experience'),
        _buildMenuItem('Personal Projects'),
        OutlineButton(
          onPressed: () {},
          padding: EdgeInsets.all(8.0),
          hoverColor: Colors.amber,
          splashColor: Colors.amber,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: Text(
            'Resume',
            style: Theme.of(context).textTheme.body2,
          ),
        )
      ],
    );
  }

  Widget _buildMenuItem(String title) {
    return FlatButton(
      onPressed: () {},
      padding: EdgeInsets.all(8.0),
      hoverColor: Colors.amber,
      splashColor: Colors.amber,
      child: Text(
        title,
        style: Theme.of(context).textTheme.body2,
      ),
    );
  }

  Widget buildTitleText(String text, Color color, {double size = 22.0}) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}
