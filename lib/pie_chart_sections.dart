import 'package:fl_chart/fl_chart.dart';
// import 'package:fl_pie_chart_example/data/pie_data.dart';
import 'package:flutter/material.dart';
import 'package:taskapp/piedata.dart';


List<PieChartSectionData> getSections() => PieData.data
    .asMap()
    .map<int, PieChartSectionData>((index, data) {
      // final isTouched = index == touchedIndex;
      // final double fontSize = isTouched ? 25 : 16;
      // final double radius = isTouched ? 100 : 80;

      final value = PieChartSectionData(
        color: data.color,
        value: data.percent,
        
        
        title: '${data.percent}%',
        showTitle: false,
        radius: 20,
        titleStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: const Color(0xffffffff),
        ),
      );

      return MapEntry(index, value);
    })
    .values
    .toList();