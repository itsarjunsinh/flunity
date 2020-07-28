import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Game 1'),
              onPressed: () => {print("Opening Game 1")},
            ),
            RaisedButton(
              child: Text('Game 2'),
              onPressed: () => {print("Opening Game 2")},
            )
          ],
        ),
      ),
    );
  }
}