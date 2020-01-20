import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
    
  Question(this.questionText); // positional argument - would be named argument if wrapped in curly braces.
  
  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}