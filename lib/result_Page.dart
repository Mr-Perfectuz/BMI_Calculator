import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "BMI CALCULATOR",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Text(
              'Your Result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
