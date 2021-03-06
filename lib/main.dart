import 'package:flunity/play_screen.dart';
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
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 16.0),
              child: RaisedButton(
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
                  child: Text('Game 1',
                      style: TextStyle(color: Colors.white, fontSize: 28.0)),
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PlayScreen(gameCode: 1)),
                  )
                },
              ),
            ),
            RaisedButton(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
                child: Text(
                  'Game 2',
                  style: TextStyle(color: Colors.white, fontSize: 28.0),
                ),
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlayScreen(gameCode: 2)),
                )
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 16.0),
              child: RaisedButton(
                color: Colors.green.shade800,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
                  child: Text('Game 3',
                      style: TextStyle(color: Colors.white, fontSize: 28.0)),
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PlayScreen(gameCode: 3)),
                  )
                },
              ),
            ),
            RaisedButton(
              color: Colors.purple,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
                child: Text(
                  'Game 4',
                  style: TextStyle(color: Colors.white, fontSize: 28.0),
                ),
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlayScreen(gameCode: 4)),
                )
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 16.0),
              child: RaisedButton(
                color: Colors.black87,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
                  child: Text('Game 5',
                      style: TextStyle(color: Colors.white, fontSize: 28.0)),
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PlayScreen(gameCode: 5)),
                  )
                },
              ),
            ),
            RaisedButton(
              color: Colors.deepOrange,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
                child: Text(
                  'Game 6',
                  style: TextStyle(color: Colors.white, fontSize: 28.0),
                ),
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlayScreen(gameCode: 6)),
                )
              },
            )
          ],
        ),
      ),
    );
  }
}
