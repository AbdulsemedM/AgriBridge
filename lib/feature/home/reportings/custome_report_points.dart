import 'package:collection/collection.dart';

class CustomeReportPoints {
  final double x;
  final double y;
  CustomeReportPoints({required this.x, required this.y});
}

List<CustomeReportPoints> get reportPoints1 {
  final data = <double>[2, 4, 6, 11, 3, 6, 4];
  return data
      .mapIndexed((index, element) =>
          CustomeReportPoints(x: index.toDouble(), y: element))
      .toList();
}

List<CustomeReportPoints> get reportPoints2 {
  final data = <double>[7, 8, 19, 12, 6, 1, 7];
  return data
      .mapIndexed((index, element) =>
          CustomeReportPoints(x: index.toDouble(), y: element))
      .toList();
}
