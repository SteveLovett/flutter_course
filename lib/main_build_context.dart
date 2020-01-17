import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SnackBarBtn(),
      ),
    );
  }
}

class SnackBarBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("This is a snack bar"),
          ));
        },
        child: Text("Open snack bar"));
  }
}
