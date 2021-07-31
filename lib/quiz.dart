import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/answer.dart';
class Quiz extends StatelessWidget{
  final List<Map<String,Object>> questionList;
  final Function handleFunction;
  final int indexOfQuestion;
  Quiz({
    @required this.questionList,
    @required this.handleFunction,
    @required this.indexOfQuestion});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Question(questionList[indexOfQuestion]['questionText']),
        //in this statement,I mapped the selected Answerkey which is a List
        //of string,and then return object of type Answer and get the final
        // result as an individual values to put  it inside the Widget of type List
        // of Widgets
        ...(questionList[indexOfQuestion]['answers'] as List<Map<String,Object>>)
            .map((answers) {
          return Answer(
              handlerSelect: ()=>handleFunction(answers['score']),
              selectedAnswer: answers['text']);
        }).toList(),
      ],
    );
  }

}