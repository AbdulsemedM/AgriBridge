import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'custome_report_points.dart';

class CustomeReportWidget extends StatelessWidget {
  final List<CustomeReportPoints> points1;
  final List<CustomeReportPoints> points2;

  const CustomeReportWidget(this.points1, this.points2, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: LineChart(
            LineChartData(
              lineBarsData: [
                LineChartBarData(
                  spots: points1.map((point) => FlSpot(point.x, point.y)).toList(),
                  isCurved: true,
                  dotData: FlDotData(show: true),
                  color: Colors.amber, // color for first line
                ),
                LineChartBarData(
                  spots: points2.map((point) => FlSpot(point.x, point.y)).toList(),
                  isCurved: true,
                  dotData: FlDotData(show: true),
                  color: Colors.green, // color for second line
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
