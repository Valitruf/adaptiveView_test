import 'package:flutter/material.dart';
import 'package:ra/helpers/autosize_fonts.dart';

class NavBarButton extends StatelessWidget {
  final height;
  final width;

  const NavBarButton({Key key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 2.0, // soften the shadow
            spreadRadius: 4.0, //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              3, // Move to bottom 5 Vertically
            ),
          ),
        ],
      ),
      height: height * 0.1,
      child: Material(
        type: MaterialType.transparency,
        elevation: 6.0,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: Center(
              child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Spacer(flex: 2),
              Flexible(
                  flex: 3,
                  child: Container(
                    color: Theme.of(context).primaryColor,
                    height: 2,
                    width: (width / 6).ceilToDouble(),
                  )),
              Spacer(flex: 2),
              Expanded(
                flex: 3,
                child: Text('Вакансии',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AutoSizeFonts.fnt17x672(height))),
              ),
              Spacer(),
            ],
          )),
        ),
      ),
    );
  }
}
