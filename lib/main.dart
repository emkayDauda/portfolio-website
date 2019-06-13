import 'package:flutter_web/material.dart';

import 'HomePage.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
    MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>{
     @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'emkayDauda Portfolio'),
    );
  }
}

