import 'package:flutter/material.dart';
  Size dkSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  double dkHeight(BuildContext context) {
    return dkSize(context).height;
  }

  double dkWidth(BuildContext context) {
    return dkSize(context).width;
  }

