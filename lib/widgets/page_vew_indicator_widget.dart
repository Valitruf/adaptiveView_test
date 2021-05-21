import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

class PageViewIndicatorSample extends StatelessWidget {
  final pageIndexNotifier;
  final length;
  static const List<Color> colorList = [
    Colors.red,
    Colors.yellow,
    Colors.green
  ];

  const PageViewIndicatorSample({Key key, this.pageIndexNotifier, this.length})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageViewIndicator(
      pageIndexNotifier: pageIndexNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey[300],
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: colorList[index],
        ),
      ),
    );
  }
}
