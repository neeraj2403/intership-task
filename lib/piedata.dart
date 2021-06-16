import 'package:flutter/material.dart';

class PieData {
  static List<Data> data = [
    Data(name: 'Green', percent: 92, color: const Color(0xff13d38e)),

    Data(name: 'Blue', percent: 3, color: const Color(0xff0293ee)),
    Data(name: 'Orange', percent: 5, color: const Color(0xfff8b250)),
    // Data(name: 'Black', percent: 15, color: Colors.black),
  ];
}

class Data {
  final String name;

  final double percent;

  final Color color;

  Data({required this.name, required this.percent, required this.color});
}