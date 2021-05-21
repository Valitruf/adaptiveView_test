import 'package:flutter/material.dart';
import 'package:ra/helpers/autosize_fonts.dart';
import 'package:ra/widgets/account_button_widget.dart';
import 'package:ra/widgets/appbar_widget.dart';
import 'package:ra/widgets/feedback_button_widget.dart';
import 'package:ra/widgets/navbar_buttom_widget.dart';
import 'package:ra/widgets/page_vew_indicator_widget.dart';
import 'package:ra/widgets/rating_indicator_late_widget.dart';
import 'package:ra/widgets/workshift_page_view_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pageIndexNotifier = ValueNotifier<int>(0);
  static const int length = 3;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBarWidget(height: height, context: context),
      body: Center(
        child: SizedBox(
          width: width * 0.9,
          height: height * 0.8,
          child: Column(
            children: <Widget>[
              Spacer(),
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Все смены',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AutoSizeFonts.fnt17x672(height)),
                    ),
                  )),
              Spacer(),
              Divider(height: 1),
              Expanded(
                flex: 13,
                child: SizedBox(
                    width: double.infinity,
                    child: WorkShiftPageView(
                        pageIndexNotifier: pageIndexNotifier,
                        length: length,
                        height: height)),
              ),
              PageViewIndicatorSample(
                  length: length, pageIndexNotifier: pageIndexNotifier),
              Divider(height: 1),
              Spacer(),
              Expanded(
                  flex: 2, child: RatIndLate(height: height, width: width)),
              Spacer(),
              Expanded(
                flex: 4,
                child: Row(
                  children: <Widget>[
                    Expanded(flex: 8, child: AccountButton(height: height)),
                    Spacer(),
                    Expanded(flex: 8, child: FeedbackButton(height: height)),
                  ],
                ),
              ),
              Spacer()
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBarButton(height: height, width: width),
    );
  }
}
