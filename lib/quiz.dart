import 'package:flutter/material.dart';
import 'package:quiz_app/Lists.dart';
import 'questions.dart';
import 'answers.dart';



class Quiz extends StatelessWidget {
  final question , answer  ;
  final Function x;

  Quiz(this.question , this.answer , this.x);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: w,
        child: Column(
          children: [
            Questions(question),
            ...(answer as List<Map<String , Object>>).map((e) {
              return Answers(()=> x(e["score"]) , e["text"], );
    })
      ],
        )
    );
  }
}
