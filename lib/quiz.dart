import 'package:flutter/material.dart';
import 'package:quiz_app/Answer.dart';
import 'package:quiz_app/questions.dart';

class quiz extends StatelessWidget {
  final List<Map<String,Object>>questions;
  final Function answerQuestions;
  final int questionIndex;
 quiz({required this.questions,required this.answerQuestions,required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               
Container(
  padding: EdgeInsets.all(30),
          child:    qust(questions[questionIndex]['question'] ,),
),
         ...(questions[questionIndex]['Answer'] as List<Map<String,Object>>).map((answer){

          return Container(
            padding: EdgeInsets.all(10),
         child: button( ()=> answerQuestions(answer['score']), answer['text'] as String),
          );
         }).toList(),
            ],
    );
  }
}