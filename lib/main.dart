import 'package:flutter/material.dart';
import 'result.dart';
import 'Lists.dart';
import 'quiz.dart';

void main() {
  runApp(Quiz_App());
}

class Quiz_App extends StatefulWidget {
  @override
  _Quiz_AppState createState() => _Quiz_AppState();
}

int Q_index = 0, total = 0, score0 = 0, score1 = 0, score2 = 0;
bool v = false;

class _Quiz_AppState extends State<Quiz_App> {
  Function x(int sum) {
    if (Q_index == 0)
      score0 = sum;
    else if (Q_index == 1)
      score1 = sum;
    else if (Q_index == 2) score2 = sum;

    total += sum;
    setState(() {
      Q_index += 1;
    });
    print("index = $Q_index");
    print("score0 = $score0");
    print("score1 = $score1");
    print("score02 = $score2");
    print("sum = $sum");
    print("total = $total");
  }

  Function restart() {
    setState(() {
      Q_index = 0;
      total = 0;
      score0 = 0;
      score1 = 0;
      score2 = 0;
    });
  }

  Function back() {
    if (Q_index == 1)
      total -= score0;
    else if (Q_index == 2)
      total -= score1;
    else if (Q_index == 3) total -= score2;

    setState(() {
      Q_index -= 1;
    });

    print("index = $Q_index");
    print("score0 = $score0");
    print("score1 = $score1");
    print("score02 = $score2");
    print("total = $total");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          backgroundColor: Colors.teal,
          actions: [
            Switch(value: v,
                activeColor: Colors.white,
                inactiveThumbColor: Colors.black,
                inactiveTrackColor: Colors.black,
                onChanged: (value){
              setState(() {
                v = value;
                if(val==true){ b = Colors.white ; w = Colors.black;}
                else if (val==false) {b = Colors.black ; w = Colors.white; }
              });
            }),
          ],
        ),
        body: Q_index < Q.length
            ? Quiz(Q[Q_index]["question"], A[Q_index]["answer"], x)
            : Result(restart),
        floatingActionButton: Q_index > 0
            ? FloatingActionButton(
                backgroundColor: Colors.teal,
                onPressed: back,
                child: Icon(
                  Icons.arrow_back,color: w,size:40,
                ),
              )
            : null,
      ),
    );
  }
}
