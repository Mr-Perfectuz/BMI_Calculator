import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomBotton extends StatelessWidget {
  BottomBotton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: KCaalculateTextStyle,
          ),
        ),
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: KbottomContainerColor,
        ),
        width: 200.0,
        height: KbottomContainerHeigh,
      ),
    );
  }
}
