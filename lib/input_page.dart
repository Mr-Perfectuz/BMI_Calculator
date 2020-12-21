import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all((15.0)),
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 170.0,
                width: 160.0,
              ),
              Container(
                margin: EdgeInsets.all((15.0)),
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 170.0,
                width: 160.0,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all((15.0)),
            decoration: BoxDecoration(
              color: Color(0xFF1D1E33),
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: 170.0,
            width: 360.0,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all((15.0)),
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 170.0,
                width: 160.0,
              ),
              Container(
                margin: EdgeInsets.all((15.0)),
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 170.0,
                width: 160.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
