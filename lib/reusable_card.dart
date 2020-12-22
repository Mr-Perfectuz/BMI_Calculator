import 'package:flutter/material.dart';

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
