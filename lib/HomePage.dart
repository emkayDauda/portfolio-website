import 'package:flutter_web/material.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildMenuBar(),
             Align(
                 alignment: Alignment(-0.1, 0),
                            child: IntrinsicWidth(
                   child: Column(
                       crossAxisAlignment: CrossAxisAlignment.stretch,
                       children: <Widget>[
                            _buildTitleText(
                  'Hi there, my name is',
                  Colors.amber[800],
                ),
                _buildTitleText(
                  'Maaruf Kehinde Dauda.',
                  Colors.black,
                  size: 60.0,
                ),
                _buildTitleText(
                  'I identify as a Programmer.',
                  Colors.amber[800],
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Image.asset(
                    "images/workspace.jpg",
                    semanticLabel: 'Workspace image.',
                    height: 500.0,
                    width: 500.0,
                    alignment: Alignment.center,
                  ),
                )
                       ],
                   ),
               ),
             )
            ],
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

  Widget _buildTitleText(String text, Color color, {double size = 22.0}) {
    return Padding(
      padding: EdgeInsets.only(left: 0.0),
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: size),
      ),
    );
  }
}
