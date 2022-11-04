import 'package:flutter/material.dart';

import '../const.dart';

class MyText extends StatelessWidget {
  String title;
  Color color;
  double textsize;
  FontWeight weight;

  TextOverflow overflow;

  MyText({
    Key? key,
    required this.title,
    required this.color,
    required this.weight,
    required this.textsize,
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
            fontSize: textsize,
          ),
        ),
      ],
    );
  }
}
