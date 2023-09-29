// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LinearPercentIndicators extends StatelessWidget {
  const LinearPercentIndicators(
      {super.key,
      this.height,
      this.width,
      this.indicatorwidth,
      this.linewidth,
      required this.lineheight,
      required this.percent,
      this.progressColor,
      this.unprogressColor,
      this.space,
      required this.data,
      required this.data1});
  final double? height;
  final double? width;
  final double? indicatorwidth;
  final double? linewidth;
  final double lineheight;
  final double percent;
  final Color? progressColor;
  final Color? unprogressColor;
  final double? space;
  final String data;
  final String data1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
        child: Column(children: [
          LinearPercentIndicator(
            width: linewidth,
            lineHeight: lineheight,
            percent: percent,
            animation: true,
            animationDuration: 1000,
            linearStrokeCap: LinearStrokeCap.round,
            backgroundColor: unprogressColor,
            progressColor: progressColor,
          ),
          SizedBox(height: space),
          Text(data),
          SizedBox(height: space),
          Text(data1)
        ]));
  }
}
