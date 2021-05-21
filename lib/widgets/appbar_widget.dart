import 'package:flutter/material.dart';
import 'package:ra/helpers/autosize_fonts.dart';

class AppBarWidget extends AppBar {
  final height;
  final context;

  AppBarWidget({this.context, this.height})
      : super(
          title: Row(
            children: <Widget>[
              Spacer(),
              Flexible(
                child: Container(
                    child: CircleAvatar(
                      backgroundImage: ExactAssetImage('assets/images/ava.jpg'),
                    ),
                    height: (height / 14.94).ceilToDouble(),
                    width: (height / 14.94).ceilToDouble()),
                flex: 3,
                fit: FlexFit.loose,
              ),
              Spacer(),
              Expanded(
                flex: 12,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Василий Алибабаевич',
                        style: TextStyle(
                            fontSize: AutoSizeFonts.fnt17x672(height))),
                    Text(
                      'Текущий общий ретинг',
                      style:
                          TextStyle(fontSize: AutoSizeFonts.fnt10x672(height)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                  icon: const Icon(Icons.settings),
                  tooltip: 'Settings',
                  onPressed: () {}),
            ),
          ],
          backgroundColor: Theme.of(context).primaryColor,
        );
}
