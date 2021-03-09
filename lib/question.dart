import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;
  
  Question(this.text);
  
  // Question(t) {
  //   text = t; 
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text, style: TextStyle(fontSize: 29, color: Colors.red), textAlign: TextAlign.center,),
      width: double.infinity,
      margin: EdgeInsets.all(15),
    );
  }
}
