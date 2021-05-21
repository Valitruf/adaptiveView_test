import 'package:flutter/material.dart';
import 'package:ra/helpers/autosize_fonts.dart';

class FeedbackButton extends StatelessWidget {
  final height;

  const FeedbackButton({Key key, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: double.infinity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Spacer(flex: 3),
              Container(
                width: (height / 44.8).ceilToDouble(),
                height: (height / 44.8).ceilToDouble(),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Center(
                    child: Text(
                  "1",
                  style: TextStyle(fontSize: AutoSizeFonts.fnt10x672(height)),
                )),
              ),
              Spacer(flex: 4),
              Flexible(
                flex: 6,
                child: Text(
                  'Отзывы',
                  style:
                      TextStyle(fontSize: AutoSizeFonts.fnt11x672(height), fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/lid.png')),
          )
        ],
      ),
      onPressed: () {
        // print('$height $width');
      },
    );
  }
}
