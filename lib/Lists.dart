import 'package:flutter/material.dart';

Color b = Colors.black;
Color w = Colors.white;

List<Map<String, String>> Q = [
  {"question": "1- What does HTML stand for?"},
  {
    "question":
        "2- Which of the following is the correct way of making a string in Java?"
  },
  {
    "question":
        "3- Which of the following is the correct way to use the standard namespace in C++?"
  },
];

List<Map<String, Object>> A = [
  {
    "answer": [
      {"text": "Hyper Trainer Marking Language", "score": 0},
      {"text": "Hyper Text Marketing Language", "score": 0},
      {"text": "Hyper Text Markup Language", "score": 10},
      {"text": "Hyper Text Markup Leveler", "score": 0},
    ]
  },
  {
    "answer": [
      {"text": "String \"Text\";", "score": 0},
      {"text": "String text = 'text';", "score": 0},
      {"text": "String text = \"text\"", "score": 0},
      {"text": "String text = \"text\";", "score": 10},
    ]
  },
  {
    "answer": [
      {"text": "Using namespace std;", "score": 10},
      {"text": "Using namespace standard;", "score": 0},
      {"text": "Using standard namespace;", "score": 0},
      {"text": "Standard namespace used;", "score": 0},
    ]
  }
];
