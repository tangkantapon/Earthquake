import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// class Forecastpage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) =>
//       Scaffold(
//         appBar: AppBar(
//           title: Text('Forecast'),
//         ),
//          body: Center(child: Text('Forecast', style: TextStyle(fontSize: 60))),
//        );
// }

class Forecastpage extends StatelessWidget {
  const Forecastpage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<void>? _launched;
  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://www.youtube.com/watch?v=IOwIWM3g_Fg';
    return Scaffold(
      appBar: AppBar(title: const Text('Forecast')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => setState(() {
            _launched = _launchInBrowser(toLaunch);
          }),
          child: const Text('Go to earthquake news'),
        ),
      ),
    );
  }
  Future<void> _launchInBrowser(String url) async {
    if (!await launch(
      url,
      forceSafariVC: true,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }
}





