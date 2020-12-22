import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const bottomContainerHeigh = 50.0;
const ExpandedWidgetColor = Color(0xFF1D1E33);

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
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: ExpandedWidgetColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: ExpandedWidgetColor,
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: ExpandedWidgetColor,
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: ExpandedWidgetColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: ExpandedWidgetColor,
                ),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xFFEB1555),
            ),
            width: 200.0,
            height: bottomContainerHeigh,
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour});
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all((15.0)),
      decoration: BoxDecoration(
        color: ExpandedWidgetColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
