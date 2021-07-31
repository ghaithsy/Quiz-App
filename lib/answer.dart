import 'package:flutter/material.dart';
class Answer extends StatelessWidget{
  final Function handlerSelect;
  final String selectedAnswer;
  Answer({this.handlerSelect,this.selectedAnswer});
  @override
  Widget build (BuildContext context){
    return Container(
      width: double.infinity,
      child:ElevatedButton(
        onPressed: handlerSelect,
        child: Text(selectedAnswer),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
      )
    );
  }
}