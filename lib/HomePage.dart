import 'package:flutter_web/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildMenuBar(),
          _buildTitleText(
            'Hi there, my name is',
            Colors.amber[800],
          ),
        ],
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

  Widget _buildTitleText(String text, Color color, {double size = 15.0}) {
    return Align(
      alignment: Alignment(-0.6, 0.0),
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: size),
      ),
    );
  }
}
