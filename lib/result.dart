import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);
  
  String get resultPhrase{
    var resultText='You did it.Your Score is='+'$resultScore';
    return resultText;
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
                child: Column(
                  children: <Widget>[
                    Text(resultPhrase),
                    RaisedButton(
                      color: Colors.blue,
                      onPressed: null,
                      child: Text('Retry Quiz'
                      ),
                    ),
                  ],
                ),
              );
  }
}