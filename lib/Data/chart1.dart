import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:math';

class _ChartData {
  _ChartData(this.date, this.y, this.y2);
  final DateTime date;
  final double y;
  final double y2;

}

final List<_ChartData> chartData = <_ChartData>[
  _ChartData(DateTime.parse("2021-01-01"), 2652, 2652),
  _ChartData(DateTime.parse("2021-01-02"), 1280, 1280),
  _ChartData(DateTime.parse("2021-01-03"), 1933, 1933),
  _ChartData(DateTime.parse("2021-01-04"), 1321, 1321),
  _ChartData(DateTime.parse("2021-01-05"), 2766, 2766),
  _ChartData(DateTime.parse("2021-01-06"), 2044, 2044),
  _ChartData(DateTime.parse("2021-01-07"), 941, 941),
  _ChartData(DateTime.parse("2021-01-08"), 1459, 1459),
  _ChartData(DateTime.parse("2021-01-09"), 1852, 1852),
  _ChartData(DateTime.parse("2021-01-10"), 1479, 1479),
  _ChartData(DateTime.parse("2021-01-11"), 2635, 2635),
  _ChartData(DateTime.parse("2021-01-12"), 1202, 1202),
  _ChartData(DateTime.parse("2021-01-13"), 1761, 1761),
  _ChartData(DateTime.parse("2021-01-14"), 1032, 1032),
  _ChartData(DateTime.parse("2021-01-15"), 929, 929),
  _ChartData(DateTime.parse("2021-01-16"), 2518, 2518),
  _ChartData(DateTime.parse("2021-01-17"), 2619, 2619),
  _ChartData(DateTime.parse("2021-01-18"), 2578, 2578),
  _ChartData(DateTime.parse("2021-01-19"), 2078, 2078),
  _ChartData(DateTime.parse("2021-01-20"), 942, 942),
  _ChartData(DateTime.parse("2021-01-21"), 2878, 2878),
  _ChartData(DateTime.parse("2021-01-22"), 1984, 1984),
  _ChartData(DateTime.parse("2021-01-23"), 1193, 1193),
  _ChartData(DateTime.parse("2021-01-24"), 1625, 1625),
  _ChartData(DateTime.parse("2021-01-25"), 964, 964),
  _ChartData(DateTime.parse("2021-01-26"), 2087, 2087),
  _ChartData(DateTime.parse("2021-01-27"), 2280, 2280),
  _ChartData(DateTime.parse("2021-01-28"), 2795, 2795),
  _ChartData(DateTime.parse("2021-01-29"), 940, 940),
  _ChartData(DateTime.parse("2021-01-30"), 1126, 1126),
  _ChartData(DateTime.parse("2021-01-31"), 2656, 2656),
];

final List<_ChartData> chartDataFeb = <_ChartData>[
  _ChartData(DateTime.parse("2021-01-01"), 2323, 0),
  _ChartData(DateTime.parse("2021-01-02"), 1880, 0),
  _ChartData(DateTime.parse("2021-01-03"), 2292, 0),
  _ChartData(DateTime.parse("2021-01-04"), 2100, 0),
  _ChartData(DateTime.parse("2021-01-05"), 1833, 0),
  _ChartData(DateTime.parse("2021-01-06"), 1484, 0),
  _ChartData(DateTime.parse("2021-01-07"), 1738, 0),
  _ChartData(DateTime.parse("2021-01-08"), 2507, 0),
  _ChartData(DateTime.parse("2021-01-09"), 2663, 0),
  _ChartData(DateTime.parse("2021-01-10"), 2503, 0),
  _ChartData(DateTime.parse("2021-01-11"), 2001, 0),
  _ChartData(DateTime.parse("2021-01-12"), 1474, 0),
  _ChartData(DateTime.parse("2021-01-13"), 2999, 0),
  _ChartData(DateTime.parse("2021-01-14"), 1316, 0),
  _ChartData(DateTime.parse("2021-01-15"), 1947, 0),
  _ChartData(DateTime.parse("2021-01-16"), 2864, 0),
  _ChartData(DateTime.parse("2021-01-17"), 1163, 0),
  _ChartData(DateTime.parse("2021-01-18"), 2110, 0),
  _ChartData(DateTime.parse("2021-01-19"), 2597, 0),
  _ChartData(DateTime.parse("2021-01-20"), 2876, 0),
  _ChartData(DateTime.parse("2021-01-21"), 2715, 0),
  _ChartData(DateTime.parse("2021-01-22"), 2011, 0),
  _ChartData(DateTime.parse("2021-01-23"), 2073, 0),
  _ChartData(DateTime.parse("2021-01-24"), 1446, 0),
  _ChartData(DateTime.parse("2021-01-25"), 1031, 0),
  _ChartData(DateTime.parse("2021-01-26"), 1348, 0),
  _ChartData(DateTime.parse("2021-01-27"), 1116, 0),
  _ChartData(DateTime.parse("2021-01-28"), 1878, 0)
];

double productionTotal(List<_ChartData> chartData) {
  double total = 0;

  for(int i=0; i < chartData.length; i++) {
    total += chartData[i].y;
  }

  return total;
}

double tenderTotal(List<_ChartData> chartData) {
  double total = 0;

  for(int i=0; i < chartData.length; i++) {
    total += chartData[i].y2;
  }

  return total;
}

List<LineSeries<_ChartData, DateTime>> getLineSeries() {
  return <LineSeries<_ChartData, DateTime>>[
    LineSeries<_ChartData, DateTime>(
        animationDuration: 2500,
        dataSource: chartData,
        xValueMapper: (_ChartData sales, _) => sales.date,
        yValueMapper: (_ChartData sales, _) => sales.y,
        width: 2,
        name: 'Production',
        markerSettings: const MarkerSettings(isVisible: true)),
    LineSeries<_ChartData, DateTime>(
        animationDuration: 2500,
        dataSource: chartData,
        width: 2,
        name: 'Tender',
        xValueMapper: (_ChartData sales, _) => sales.date,
        yValueMapper: (_ChartData sales, _) => sales.y2,
        markerSettings: const MarkerSettings(isVisible: true))
  ];
}

double roundDouble(double value, int places){
  num mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

List<LineSeries<_ChartData, DateTime>> getDefaultLineSeries() {
  return <LineSeries<_ChartData, DateTime>>[
    LineSeries<_ChartData, DateTime>(
        animationDuration: 2500,
        dataSource: chartData,
        xValueMapper: (_ChartData sales, _) => sales.date,
        yValueMapper: (_ChartData sales, _) => sales.y2,
        width: 2,
        name: 'Current Period'
    ),
    LineSeries<_ChartData, DateTime>(
        animationDuration: 2500,
        dataSource: chartDataFeb,
        dashArray: <double>[5,5],
        xValueMapper: (_ChartData sales, _) => sales.date,
        yValueMapper: (_ChartData sales, _) => sales.y,
        width: 2,
        name: 'Previous Period',
    ),
  ];
}