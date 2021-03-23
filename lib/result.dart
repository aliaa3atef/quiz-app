import 'package:flutter/material.dart';
import 'package:quiz_app/Lists.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final Function r;

  Result(this.r);

  String get res_text{
    String res ;
    if(total==0) res = "Too bad! , try again";
    else if (total == 10) res = "Good!";
    else if (total == 20) res = "Very good!";
    else res= "excellent";
    return res;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Your Score is $total/30" , style: TextStyle(fontSize: 40 ,color: b), textAlign: TextAlign.center,),

          Text(res_text , style: TextStyle(fontSize: 40 ,color: b), textAlign: TextAlign.center,),


          TextButton(onPressed: r,
            child: Text("Retake Quiz" , style: TextStyle(fontSize: 40 , color: Colors.teal),),
          )
        ],
      ),
    );
  }
}
