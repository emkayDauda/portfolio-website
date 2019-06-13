import 'package:flutter_web/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        _buildMenuBar(),
      ],
    );
  }

  Widget _buildMenuBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        _buildMenuItem('About Me'),
        _buildMenuItem('Experience'),
        _buildMenuItem('Personal Projects')
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
}
