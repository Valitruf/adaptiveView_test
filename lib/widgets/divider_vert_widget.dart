import 'package:flutter/material.dart';

class DividerVert extends StatelessWidget {
  final double height;

  const DividerVert({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(color: Colors.green, height: height * 0.07, width: 2));
  }
}
