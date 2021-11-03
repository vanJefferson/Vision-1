class BarChartData {
  BarChartData( this.month, this.production, this.presplit, this.tender);
  final String month;
  final double production;
  final double presplit;
  final double tender;
}

List<BarChartData> getDefaultBarSeries() {
  final List<BarChartData> chartData1 = <BarChartData>[
    BarChartData("Jan", 45050, 950, 46000),
    BarChartData("Feb", 50201, 2100, 51446),
    BarChartData("Mar", 49346, 1102, 50448),
    BarChartData("Apr", 50466, 1383, 51849),
    BarChartData("May", 25014.3, 1258.1, 26272.4),
    BarChartData("Jun", 50000, 0, 50000),
  ];
  return chartData1;
}

double presplitTotal(List<BarChartData> chartData) {
  double total = 0;

  for(int i=0; i < chartData.length; i++) {
    total += chartData[i].presplit;
  }

  return total;
}

double prodTotal(List<BarChartData> chartData) {
  double total = 0;

  for(int i=0; i < chartData.length; i++) {
    total += chartData[i].production;
  }

  return total;
}

double tenTotal(List<BarChartData> chartData) {
  double total = 0;

  for(int i=0; i < chartData.length; i++) {
    total += chartData[i].tender;
  }

  return total;
}

double total(List<BarChartData> chartData) {
  double total = 0;
  double prod = 0;
  double presplit = 0;

  prod = prodTotal(chartData);
  presplit = presplitTotal(chartData);
  total = prod + presplit;

  return total;
}
