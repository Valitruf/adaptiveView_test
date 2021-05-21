import 'package:flutter/material.dart';
import 'package:ra/helpers/autosize_fonts.dart';
import 'package:ra/repository/dummy_data.dart';

import 'divider_vert_widget.dart';

class WorkShiftPageView extends StatefulWidget {
  final pageIndexNotifier;
  final int length;
  final double height;

  const WorkShiftPageView({
    Key key,
    @required this.pageIndexNotifier,
    @required this.length,
    @required this.height
  }) : super(key: key);

  @override
  _WorkShiftPageViewState createState() => _WorkShiftPageViewState();
}

class _WorkShiftPageViewState extends State<WorkShiftPageView> {
  PageController _controller;
  List<WorkShift> workShift = DUMMY_DATA;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        itemCount: widget.length,
        onPageChanged: (index) => {widget.pageIndexNotifier.value = index},
        itemBuilder: (context, page) {
          return ListView.separated(
              separatorBuilder: (context, index) =>
                  Row(children: <Widget>[
                    Expanded(
                        flex: 3,
                        child: Divider(
                          height: 1,
                        )),
                    Flexible(
                      child: Container(
                        child: Text(
                          "ЧТ, 16.04.2020",
                          style: TextStyle(
                              fontSize: AutoSizeFonts.fnt8x672(widget.height)),
                        ),
                      ),
                      flex: 7,
                      fit: FlexFit.loose,
                    ),
                    Expanded(
                        flex: 30,
                        child: Divider(
                          height: 1,
                        )),
                  ]),
              itemCount: 4,
              itemBuilder: (context, index) {
                List<WorkShift> list = [];
                page < 1
                    ? list.addAll(workShift)
                    : page > 1
                    ? list.addAll(workShift.skip(8))
                    : list.addAll(workShift.skip(4));
                return SizedBox(
                  height: widget.height * 0.08,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //Spacer(),
                      Expanded(
                          flex: 3,
                          //fit: FlexFit.tight,
                          child: Column(
                            children: <Widget>[
                              Spacer(),
                              Text(
                                '${list[index].startTime}',
                                style: TextStyle(
                                    fontSize: AutoSizeFonts.fnt12x672(
                                        widget.height)),
                              ),
                              Text(
                                '${list[index].endTime}',
                                style: TextStyle(
                                    fontSize: AutoSizeFonts.fnt12x672(
                                        widget.height)),
                              ),
                              Spacer(),
                            ],
                          )),
                      Spacer(),
                      DividerVert(height: widget.height),
                      Spacer(),
                      Expanded(
                        flex: 12,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Spacer(),
                            Flexible(
                              flex: 3,
                              child: Text(
                                '${list[index].title}',
                                style: TextStyle(
                                    fontSize: AutoSizeFonts.fnt14x672(
                                        widget.height),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Spacer(),
                            Flexible(
                              flex: 2,
                              child: Text(
                                'Адрес',
                                style: TextStyle(
                                    fontSize: AutoSizeFonts.fnt10x672(
                                        widget.height), color: Colors.grey),
                              ),
                            ),
                            Spacer(),
                            Flexible(
                              flex: 2,
                              child: Text(
                                '${list[index].adress}',
                                style: TextStyle(
                                  fontSize: AutoSizeFonts.fnt10x672(
                                      widget.height),
                                ),
                              ),
                            ),
                            Spacer()
                          ],
                        ),
                      ),
                      Spacer(),
                      Expanded(
                          flex: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Spacer(),
                              Expanded(
                                  flex: 8,
                                  child: Text(
                                    '${list[index].income}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: AutoSizeFonts.fnt14x672(
                                          widget.height),),
                                  )),
                            ],
                          )),
                      Spacer(),
                      DividerVert(height: widget.height),
                      Spacer(),
                      Expanded(
                          flex: 3,
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: <Widget>[
                                Spacer(),
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      width:
                                      (widget.height / 22.4).ceilToDouble(),
                                      height:
                                      (widget.height / 22.4).ceilToDouble(),
                                      alignment: Alignment.topRight,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(25.0),
                                        border: Border.all(
                                          width: 1.0,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text('${list[index].rating}'),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: -8,
                                      right: -5,
                                      child: Icon(
                                        Icons.star,
                                        color: Theme.of(context).primaryColor,
                                        size: AutoSizeFonts.fnt22x672(
                                            widget.height),
                                      ),
                                    ),
                                  ],
                                  clipBehavior: Clip.none,
                                ),
                                Spacer(),
                                Container(
                                  child: Image.asset(
                                    'assets/images/vector.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Spacer()
                              ],
                            ),
                          )),
                    ],
                  ),
                );
              });
        });
  }
}
