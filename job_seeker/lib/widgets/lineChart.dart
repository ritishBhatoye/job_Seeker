// // import 'package:flutter/material.dart';
// // import 'package:flutter_charts/flutter_charts.dart' as charts;

// // class LineChartExample extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     // Sample data
// //     List<charts.Series<TimeSeriesSales, DateTime>> seriesList = [
// //       charts.Series(
// //         id: "Sales",
// //         data: [
// //           TimeSeriesSales(DateTime(2024, 1, 1), 5),
// //           TimeSeriesSales(DateTime(2024, 2, 1), 25),
// //           TimeSeriesSales(DateTime(2024, 3, 1), 100),
// //           TimeSeriesSales(DateTime(2024, 4, 1), 75),
// //         ],
// //         domainFn: (TimeSeriesSales sales, _) => sales.time,
// //         measureFn: (TimeSeriesSales sales, _) => sales.sales,
// //       ),
// //     ];

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Line Chart Example'),
// //       ),
// //       body: Center(
// //         child: Container(
// //           height: 300,
// //           padding: EdgeInsets.all(16.0),
// //           child: charts.TimeSeriesChart(
// //             seriesList,
// //             dateTimeFactory: const charts.LocalDateTimeFactory(),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class TimeSeriesSales {
// //   final DateTime time;
// //   final int sales;

// //   TimeSeriesSales(this.time, this.sales);
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter_charts/flutter_charts.dart' as charts;

// class LineChartExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Sample data
//     List<charts.Series<TimeSeriesSales, DateTime>> seriesList = [
//       charts.Series<TimeSeriesSales, DateTime>(
//         id: "Sales",
//         data: [
//           TimeSeriesSales(DateTime(2024, 1, 1), 5),
//           TimeSeriesSales(DateTime(2024, 2, 1), 25),
//           TimeSeriesSales(DateTime(2024, 3, 1), 100),
//           TimeSeriesSales(DateTime(2024, 4, 1), 75),
//         ],
//         domainFn: (TimeSeriesSales sales, _) => sales.time,
//         measureFn: (TimeSeriesSales sales, _) => sales.sales,
//       ),
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Line Chart Example'),
//       ),
//       body: Center(
//         child: Container(
//           height: 300,
//           padding: EdgeInsets.all(16.0),
//           child: charts.TimeSeriesChart<TimeSeriesSales>(
//             seriesList,
//             dateTimeFactory: const charts.LocalDateTimeFactory(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class TimeSeriesSales {
//   final DateTime time;
//   final int sales;

//   TimeSeriesSales(this.time, this.sales);
// }

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_chart_demo/data/price_point.dart';

class Point {
  final double x;
  final double y;

  Point(this.x, this.y);
}

// Assuming 'points' is a list of Point objects
List<Point> points = [
  Point(0, 10),
  Point(1, 5),
  Point(2, 20),
  Point(3, 10),
  Point(4, 25),
  Point(5, 17),
  Point(6, 35),

  // Add more points as needed
];

class LineChartWidget extends StatelessWidget {
  // final List points;

  const LineChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: LineChart(
            curve: Curves.bounceInOut,
            LineChartData(
              minX: 0,
              minY: 5,
              maxX: 6,
              lineBarsData: [
                LineChartBarData(
                  spots:
                      points.map((point) => FlSpot(point.x, point.y)).toList(),
                  isCurved: true,
                  dotData: FlDotData(
                    show: false,
                  ),
                  barWidth: 6,
                  color: Color(0XFF49AAA0),
                ),
              ],
              borderData: FlBorderData(
                  border:
                      Border(bottom: BorderSide.none, left: BorderSide.none)),
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(
                show: false,
                // bottomTitles: AxisTitles(),
                leftTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                topTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                rightTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // SideTitles get _bottomTitles => SideTitles(
  //       showTitles: true,
  //       getTitlesWidget: (value, meta) {
  //         String text = '';
  //         switch (value.toInt()) {
  //           case 1:
  //             text = 'Jan';
  //             break;
  //           case 3:
  //             text = 'Mar';
  //             break;
  //           case 5:
  //             text = 'May';
  //             break;
  //           case 7:
  //             text = 'Jul';
  //             break;
  //           case 9:
  //             text = 'Sep';
  //             break;
  //           case 11:
  //             text = 'Nov';
  //             break;
  //         }

  //         return Text(text);
  //       },
  //     );
}
