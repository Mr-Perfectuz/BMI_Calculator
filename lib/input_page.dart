import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeigh = 50.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const incativeCardColor = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = incativeCardColor;
  Color femaleCardColor = incativeCardColor;

  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == incativeCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = incativeCardColor;
      } else {
        maleCardColor = incativeCardColor;
        femaleCardColor = activeCardColor;
      }
    }

    if (selectedGender == Gender.female) {
      if (femaleCardColor == incativeCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = incativeCardColor;
      } else {
        femaleCardColor = incativeCardColor;
        maleCardColor = activeCardColor;
      }
    }
  }

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
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.male);
                    });
                  },
                  child: ReusableCard(
                    colour: maleCardColor,
                    carchild: CardIcon(
                      icon: FontAwesomeIcons.male,
                      label: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.female);
                    });
                  },
                  child: ReusableCard(
                    colour: femaleCardColor,
                    carchild: CardIcon(
                      icon: FontAwesomeIcons.female,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
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
                  colour: activeCardColor,
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
