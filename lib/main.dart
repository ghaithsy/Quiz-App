import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyQuizApp();
  }
}
//in this file we tried as much as possible to split the widget and that's good
//for the performance
class _MyQuizApp extends State<QuizApp> {
  int _questionIndex = 0;
  int _totalScore=0;

  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }
  void resetTheValues(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }

//List of Maps which contain the questions and the answers
  var _questions = [
    {
      'questionText': 'what\'s your favourite color?',
      'answers': [
        {'text':'Black','score':10},
        {'text':'Red','score':15},
        {'text':'Green','score':30},
        {'text':'White','score':65}]
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': [
         {'text':'Monkey','score':15},
         {'text':'Lion','score':40},
         {'text':'Cat','score':40},
         {'text':'Rabbit','score':10},
         {'text':'Snake','score':5}]
    },
    {
      'questionText': 'what\'s your favourite instructor?',
      'answers': [
        {'text':'Samer','score':10},
        {'text':'Anwar','score':10},
        {'text':'Ibrahim','score':10},
        {'text':'Ali','score':10},
        {'text':'Ghaith','score':10}]
    },
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Check Your Personality'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(questionList: _questions,handleFunction:
        _answerQuestion,indexOfQuestion: _questionIndex,)
            : Result(totalScore: _totalScore,resetHandler:resetTheValues)
      ),
    );
  }
}
