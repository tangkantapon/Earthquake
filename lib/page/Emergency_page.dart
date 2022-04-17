import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_makingPhoneCall() async {
  const url = 'tel:1784';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class Emergencypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text('Emergency call'),
        ),
        //body: Center(child: Text('Detection graph', style: TextStyle(fontSize:60))),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 250.0,
                ),
                Text(
                  'Call 1784',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 20.0,
                ),
                Text(
                  'For earthquake hotline',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: _makingPhoneCall,
                  child: Text('Call'),
                  textColor: Colors.black,
                  padding: const EdgeInsets.all(5.0),
                ),
              ],
            ),
          ),
        ),
      );
}