import 'package:flutter/material.dart';

import '../utils/responsive.dart';
import '../widgets/activity_details_card_widget.dart';
import '../widgets/bar_graph_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/line_chart_card_widget.dart';
import '../widgets/summary_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(height: 18),
            const HeaderWidget(),
            const SizedBox(height: 18),
            const ActivityDetailsCard(),
            const SizedBox(height: 18),
            const LineChartCard(),
            const SizedBox(height: 18),
            const BarGraphCard(),
            const SizedBox(height: 18),
            if (Responsive.isTablet(context)) const SummaryWidget(),
          ],
        ),
      ),
    );
  }
}
