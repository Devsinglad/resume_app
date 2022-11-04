import 'package:flutter/material.dart';

import '../const.dart';

class MyText extends StatelessWidget {
  String title;
  Color color;
  double? textsize;
  FontWeight weight;

  TextOverflow overflow;

  MyText({
    Key? key,
    required this.title,
    required this.color,
    required this.weight,
    this.textsize,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          maxLines: 1,
          style: TextStyle(
            fontWeight: weight,
            color: color,
            fontSize: MediaQuery.textScaleFactorOf(context) * 15,
          ),
        ),
      ],
    );
  }
}

Widget SmallText({
  required BuildContext context,
  required String title,
  required Color color,
  double? textsize,
}) {
  return Text(
    title,
    style: TextStyle(
        fontSize: MediaQuery.textScaleFactorOf(context) * 12,
        fontWeight: FontWeight.w500,
        color: color),
  );
}
