import 'package:flutter/material.dart';
import 'package:mac_poc/views/settings_view.dart';

import 'utils/responsive.dart';
import 'views/dashboard_view.dart';
import 'widgets/side_menu_widget.dart';
import 'widgets/summary_widget.dart';
import 'views/operations_view.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      drawer: !isDesktop
          ? SizedBox(
              width: 250,
              child: SideMenuWidget(
                selectedIndex: selectedIndex,
                onItemSelected: onItemSelected,
              ),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SummaryWidget(),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideMenuWidget(
                    selectedIndex: selectedIndex,
                    onItemSelected: onItemSelected,
                  ),
                ),
              ),
            if (selectedIndex == 0)
              const Expanded(
                flex: 7,
                child: DashboardView(),
              ),
            if (isDesktop && selectedIndex == 0)
              const Expanded(
                flex: 3,
                child: SummaryWidget(),
              ),
            if (selectedIndex == 1)
              const Expanded(
                flex: 10,
                child: OperationsView(),
              ),
            if (selectedIndex == 2)
              const Expanded(
                flex: 10,
                child: SettingsView(),
              ),
          ],
        ),
      ),
    );
  }

  void onItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
