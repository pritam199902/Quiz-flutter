import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _onClickHandler;
  final String _ans;
  final bool _cop;
  final int _scr;

  Answer(this._onClickHandler, this._ans, this._cop, this._scr );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,child: RaisedButton(
        onPressed: () => {_onClickHandler(this._scr, this._cop)},
        child: Text(_ans),
        color: Colors.blueGrey,
        textColor: Colors.white,
      ),
    );
  }
}
