import 'package:flutter/material.dart';

import '../data/summary_data.dart';
import 'custom_card_widget.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final summaryData = SummaryData();

    return CustomCard(
      color: const Color(0xFF2F353E),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildDetails(summaryData.summaryData[0].title,
              summaryData.summaryData[0].value),
          buildDetails(summaryData.summaryData[1].title,
              summaryData.summaryData[1].value),
          buildDetails(summaryData.summaryData[2].title,
              summaryData.summaryData[2].value),
          buildDetails(summaryData.summaryData[3].title,
              summaryData.summaryData[3].value),
        ],
      ),
    );
  }

  Widget buildDetails(String key, String value) {
    return Column(
      children: [
        Text(
          key,
          style: const TextStyle(fontSize: 11, color: Colors.grey),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
