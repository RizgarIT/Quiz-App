import 'package:flutter/material.dart';

class button extends StatelessWidget {
final VoidCallback buttonfn;
final String AnswerText;
 button(this.buttonfn,this.AnswerText);  

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                width: 240,
                child:RaisedButton(
                onPressed: buttonfn,
                child: Text(AnswerText),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
              )
    );
  }
}