import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class PlayScreen extends StatefulWidget {
  final int gameCode;

  PlayScreen({Key key, @required this.gameCode}) : super(key: key);

  @override
  _PlayScreenState createState() => _PlayScreenState(gameCode: gameCode);
}

class _PlayScreenState extends State<PlayScreen> {
  final int gameCode;

  _PlayScreenState({@required this.gameCode});

  UnityWidgetController _unityWidgetController;

  @override
  Widget build(BuildContext context) {
    print("Opening Game $gameCode");
    return Scaffold(
        body: Container(
      color: Colors.blueGrey,
      child: UnityWidget(
        onUnityViewCreated: onUnityCreated,
        onUnityMessage: onUnityMessage,
      ),
    ));
  }

  void onUnityCreated(controller) {
    this._unityWidgetController = controller;
  }

  void onUnityMessage(controller, message) {
    print("Asking Unity to start game $gameCode");
    // Specify game-to-start
    if (message == "ChiefManagerRunning")
      _unityWidgetController.postMessage(
          'ChiefManager', 'LaunchGame', "$gameCode");
  }
}
