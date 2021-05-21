import 'package:flutter/material.dart';
import 'package:ra/helpers/autosize_fonts.dart';

class RatIndLate extends StatelessWidget {
  final height;
  final width;
  const RatIndLate({Key key, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Ваш рейтинг',
              style: TextStyle(fontSize: AutoSizeFonts.fnt10x672(height)),
            ),
            Text('324',
                style: TextStyle(fontSize: AutoSizeFonts.fnt17x672(height), fontWeight: FontWeight.bold)),
          ],
        ),
        Spacer(),
        Align(
          alignment: Alignment.topCenter,
          child: Icon(
            Icons.arrow_upward,
            color: Theme.of(context).primaryColor,
            size: AutoSizeFonts.fnt17x672(height),
          ),
        ),
        // Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Без опозданий 10 дней x2', style: TextStyle(fontSize: AutoSizeFonts.fnt10x672(height))),
            Container(
              height: height * 0.004,
              width: width * 0.55,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      color: Color.fromRGBO(220, 220, 220, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.5,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        // Spacer(),
      ],
    );
  }
}
