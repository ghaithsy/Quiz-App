import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result({this.totalScore, this.resetHandler});

  String get resultPhrase {
    String resultPhrase;
    if (totalScore < 30) {
      resultPhrase = 'you are bad';
    } else if (totalScore < 40) {
      resultPhrase = 'you are good ';
    } else {
      resultPhrase = 'you are awesome';
    }
    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Reset Quiz'),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
