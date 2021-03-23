import 'package:flutter/material.dart';
import 'package:quiz_app/Lists.dart';


class Answers extends StatelessWidget {

  final answer_text;
  final Function A ;

  const Answers(this.A , this.answer_text,);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: A,
        child: Text(answer_text , style: TextStyle(fontSize: 20),),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal)),
      ),
    );
  }
}
