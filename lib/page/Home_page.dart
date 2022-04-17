import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Home'),
    ),
    // body: Center
    //   (child: Text('Home', style: TextStyle(fontSize:60))),
    body: Center(
      child: Column(
        children: <Widget>[
          Text('Application Feature', style: TextStyle(fontSize:20)),
          Image.asset('assets/graphdetect.jpg', width: 200, height: 130,),
          Text('Detection graph', style: TextStyle(fontSize:10)),
          Image.asset('assets/colorscale.png', width: 200, height: 130,),
          Text('Color scale', style: TextStyle(fontSize:10)),
          Image.asset('assets/forecast.jpeg', width: 200, height: 130,),
          Text('Forecast', style: TextStyle(fontSize:10)),
          Image.asset('assets/emergency.jpg', width: 200, height: 130,),
          Text('Emergency call', style: TextStyle(fontSize:10)),
        ],
      ),
    ),
  );
}