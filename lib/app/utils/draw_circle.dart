import 'dart:math';
import 'package:agri_bridge/app/app_colors.dart';
import 'package:flutter/material.dart';

class CircularPercentageWidget extends StatelessWidget {
  final double percentage;
  final Color color;
  final String text;

  CircularPercentageWidget({
    required this.percentage,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 150, // Adjust the size as needed
            height: 150,
            child: CustomPaint(
              painter: CircularPercentagePainter(
                percentage: percentage,
                color: color,
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColors.bgColor,
            ),
          ),
        ],
      ),
    );
  }
}

class CircularPercentagePainter extends CustomPainter {
  final double percentage;
  final Color color;

  CircularPercentagePainter({
    required this.percentage,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;
    final double strokeWidth = 25.0;

    final double sweepAngle = 2 * pi * (percentage / 100);
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final Paint greyPaint = Paint()
      ..color = AppColors.greyColor.withOpacity(0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawArc(
      Rect.fromCircle(
        center: Offset(radius, radius),
        radius: radius - strokeWidth / 2,
      ),
      -pi / 2, // Start angle
      sweepAngle, // Sweep angle
      false,
      paint,
    );

    final remainingAngle = 2 * pi - sweepAngle;
    canvas.drawArc(
      Rect.fromCircle(
        center: Offset(radius, radius),
        radius: radius - strokeWidth / 2,
      ),
      sweepAngle - pi / 2, // Start angle
      remainingAngle, // Sweep angle
      false,
      greyPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
