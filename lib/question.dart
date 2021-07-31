import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String selectedQuestion;

  Question(this.selectedQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        selectedQuestion,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
