import 'package:flutter/material.dart';
import 'package:quiz_app/Answer.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main(List<String> args) => runApp(MaterialApp(
      home: Home()));

class myapp extends StatefulWidget {
  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  var question = [
    {
      'question': 'گەورەترین هەسارەی کۆمەڵەی خۆر چیە !؟',
      'Answer': [
        {'text': 'زوحەل', 'score': 0},
        {'text': 'موشتەری', 'score': 1},
        {'text': 'مەریخ', 'score': 0}
      ]
    },
    {
      'question': 'کام وڵات زۆرترین ژمارەی گامێش و ڕەشەوڵخی تێدایە !؟',
      'Answer': [
        {'text': 'هیند', 'score': 1},
        {'text': 'مصر', 'score': 0},
        {'text': 'مەکسیک', 'score': 0}
      ]
    },
    {
      'question': 'شیرینی کونافە لەبنچینەدا هی کام وڵاتە !؟',
      'Answer': [
        {'text': 'تورکیا ', 'score': 0},
        {'text': 'فەڵەستین', 'score': 0},
        {'text': 'ئەرمەنیا', 'score': 1}
      ]
    }
  ];
  var increment = 0;
  var totalScore = 0;
  void _answeQuestion(int score) {


    if (increment < question.length) {
      
      setState(() {
        increment = increment + 1;
       
        totalScore=totalScore+score;
      });
    } else {}
  }
void resetQuiz()
{
 setState(() {
            increment = 0;
            totalScore=0;
          });
}
  @override
  Widget build(BuildContext context) {
    return 
         Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
             Navigator.pop(context); 
          },
        ),
        title: Text('پرسیار و وەڵام '),
        backgroundColor: Colors.yellow[900],
      ),
      body: increment < question.length? Column(
              children: [
                quiz(
                  answerQuestions: _answeQuestion,
                  questionIndex: increment,
                  questions: question,
                ),
                Container(
                    padding: EdgeInsets.all(35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.info),
                        Icon(Icons.verified_user),
                        Icon(
                          Icons.share,
                        )
                      ],
                    ))
              ],
            )
          : result(totalScore),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: resetQuiz,
        label: const Text(
          'تازەکردنەوە',
        ),
        icon: const Icon(Icons.refresh),
        backgroundColor: Colors.yellow[900],
      ),
    );
  }
}


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('پرسیار و وەڵام '),
          centerTitle: true,
           backgroundColor: Colors.yellow[900],
        ),
        body:Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[ 
            
            Image.asset('assets/images/customer-service.png'),
            RaisedButton(
            
            onPressed:(){ 
              
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  myapp()),
               );
            },
        child: Text('پرسیارەکان',style: TextStyle(
      fontSize: 20,
     
      
    ),
        ),
        color: Colors.yellow[900],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        )
          ],
      )
    
        )
    );
  }
}