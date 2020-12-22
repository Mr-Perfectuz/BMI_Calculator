import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeigh = 50.0;
const ExpandedWidgetColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

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
                  carchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.male,
                        size: 80.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'MALE',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Color(0xFF8D8E98),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: ExpandedWidgetColor,
                  carchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.female,
                        size: 80.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'FAMALE',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Color(0xFF8D8E98),
                        ),
                      )
                    ],
                  ),
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
                  carchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: ExpandedWidgetColor,
                  carchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: bottomContainerColor,
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
  ReusableCard({@required this.colour, this.carchild});
  final Color colour;
  final Widget carchild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: carchild,
      margin: EdgeInsets.all((15.0)),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
