import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Colorscalepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Color scale'),
    ),
    body: Center(
      child: Column(
        children: <Widget>[
          Text('Color scale information', style: TextStyle(fontSize:20)),
          Image.asset('assets/CL.jpg'),
          Text('Color scale description', style: TextStyle(fontSize:20)),
          Image.asset('assets/colorinformation.png'),
        ],
      ),
    ),
  );
}