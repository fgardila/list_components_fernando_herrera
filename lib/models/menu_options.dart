import 'package:flutter/material.dart' show IconData, Widget;

class MenuOptions {
  final String route;
  final String name;
  final Widget screen;
  final IconData icon;

  MenuOptions({
    required this.route,
    required this.name,
    required this.screen,
    required this.icon,
  });
}
