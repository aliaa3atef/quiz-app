import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Lists.dart';

class Questions extends StatelessWidget {
  final q_text ;

  const Questions(this.q_text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
      child: Text(q_text ,
        style: TextStyle(fontSize:30 , color: b),
        textAlign: TextAlign.center,
      ),
    );
  }
}
