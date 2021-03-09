import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScr;
  final int _totalGet;
  final Function _reset;

  Result(this._totalScr, this._totalGet, this._reset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text("You Did It!", style: TextStyle(fontSize: 28, color: Colors.green, height: 2),),
        Text("Your Score : $_totalGet out of $_totalScr"),
        RaisedButton(
          hoverColor: Colors.red,
          child : Text("Rstart quize!"),
          onPressed: this._reset,
          elevation: 5,
        )
      ]),
    );
  }
}
