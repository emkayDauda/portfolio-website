import 'package:flutter_web/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
   
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
            _buildMenuBar(),
        ],
    );
  }
}

Widget _buildMenuBar(){
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
            _buildMenuItem('About Me'),
            _buildMenuItem('Experience'),
            _buildMenuItem('Personal Projects')
        ],
    );
}

Widget _buildMenuItem(String title){
    return Text(
        title,
        // style: Theme.of(context).textTheme.body2,
        );
}