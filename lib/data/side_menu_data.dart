import 'package:flutter/material.dart';

import '../models/menu_model.dart';

class SideMenuData {
  final menu = const <MenuModel>[
    MenuModel(icon: Icons.home, title: 'Dashboard'),
    MenuModel(icon: Icons.edit, title: 'Opérations'),
    MenuModel(icon: Icons.settings, title: 'Paramètres'),
  ];
}
