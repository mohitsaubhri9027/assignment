import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PercentIndicator extends StatelessWidget {
  const PercentIndicator(
      {super.key,
      this.height,
      this.width,
      required this.data,
      this.fontsize,
      this.spacebetween,
      this.progresscolor,
      required this.percent,
      required this.data1,
      required this.unprogresscolor,
      required this.data2});
  final double? height;
  final double? width;
  final String data;
  final double? fontsize;
  final double? spacebetween;
  final Color? progresscolor;
  final double percent;
  final String data1;
  final String data2;
  final Color unprogresscolor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Column(
        children: [
          Text(
            data,
            style: TextStyle(
                color: const Color.fromRGBO(121, 120, 120, 1),
                fontWeight: FontWeight.w500,
                fontSize: fontsize),
          ),
          SizedBox(
            height: spacebetween,
          ),
          CircularPercentIndicator(
            animation: true,
            animationDuration: 1000,
            fillColor: Colors.white,
            backgroundColor: unprogresscolor,
            radius: 35.0,
            lineWidth: 20.0,
            percent: percent,
            progressColor: progresscolor,
          ),
          SizedBox(
            height: spacebetween,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data1,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: fontsize),
              ),
              Text(
                data2,
                style: TextStyle(
                    color: progresscolor,
                    fontWeight: FontWeight.w300,
                    fontSize: fontsize),
              ),
            ],
          )
        ],
      ),
    );
  }
}
