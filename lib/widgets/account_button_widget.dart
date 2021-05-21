import 'package:flutter/material.dart';
import 'package:ra/helpers/autosize_fonts.dart';

class AccountButton extends StatelessWidget {
  final height;

  const AccountButton({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: double.infinity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      color: Colors.white,
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            Text('3450 ₽',
                style: TextStyle(
                    fontSize: AutoSizeFonts.fnt20x672(height),
                    color: Theme.of(context).primaryColor)),
            Spacer(),
            Text('На моем счету',
                style: TextStyle(
                    fontSize: AutoSizeFonts.fnt11x672(height),
                    fontWeight: FontWeight.bold)),
            Spacer(),
          ],
        ),
      ),
      onPressed: () {},
    );
  }
}
