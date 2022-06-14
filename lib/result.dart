import 'package:flutter/material.dart';
import './questions.dart';
class result extends StatelessWidget {
var resultScore;
result(this.resultScore);
String get resultph
{String resultText ='دەرنەچووی';

if(resultScore==2 ){
  
resultText='دەرچووی';

}
else if(resultScore==3 ){
resultText='دەرچووی';
}
else if(resultScore==0 && resultScore==1)
{
resultText='دەرنەچووی';

}
return resultText;
}

  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
          resultScore>=2 ?  Image.asset('assets/images/success.png')

          
          :
          Image.asset('assets/images/cancel.png'),
          qust(resultph),
      ],
    );
  }
}