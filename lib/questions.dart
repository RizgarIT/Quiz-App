import 'package:flutter/material.dart';


class qust extends StatelessWidget {
  var question;
qust(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
margin: EdgeInsets.all(20),
   child: Text(question,

    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold
      
    ),
    textAlign: TextAlign.center,
    )
    );
  }
}