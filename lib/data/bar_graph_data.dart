import 'package:flutter/material.dart';

import '../models/bar_graph_model.dart';
import '../models/graph_model.dart';

class BarGraphData {
  final data = [
    const BarGraphModel(label: "Entrées", color: Color(0xFFFEB95A), graph: [
      GraphModel(x: 0, y: 8),
      GraphModel(x: 1, y: 10),
      GraphModel(x: 2, y: 7),
      GraphModel(x: 3, y: 4),
      GraphModel(x: 4, y: 4),
      GraphModel(x: 5, y: 6),
      GraphModel(x: 6, y: 0),
    ]),
    const BarGraphModel(label: "Sorties", color: Color(0xFFF2C8ED), graph: [
      GraphModel(x: 0, y: 8),
      GraphModel(x: 1, y: 10),
      GraphModel(x: 2, y: 9),
      GraphModel(x: 3, y: 6),
      GraphModel(x: 4, y: 6),
      GraphModel(x: 5, y: 7),
      GraphModel(x: 6, y: 2),
    ]),
    const BarGraphModel(label: "Stock", color: Color(0xFF20AEF3), graph: [
      GraphModel(x: 0, y: 7),
      GraphModel(x: 1, y: 10),
      GraphModel(x: 2, y: 7),
      GraphModel(x: 3, y: 4),
      GraphModel(x: 4, y: 4),
      GraphModel(x: 5, y: 10),
      GraphModel(x: 6, y: 8),
    ]),
  ];

  final label = ['L', 'M', 'M', 'J', 'V', 'S', 'D'];
}
