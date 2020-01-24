import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  
  Answer({@required this.selectHandler, @required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Color(0xFF800020),
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
