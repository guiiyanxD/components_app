
import 'package:flutter/material.dart' show IconData, Widget;

/// Widget creado para poder gestionar las rutas de la aplicacion.
class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

   MenuOption({
      required this.route,
      required this.icon,
      required this.name,
      required this.screen
   });
}