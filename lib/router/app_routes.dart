
import 'package:components_application/models/menu_option.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

/// Esta clase ha sido creade con el fin de poder gestionar aqui las rutas que tendra la app
class AppRoutes {

  /// Ruta que va definir la patanlla "raiz" de nuestra aplicacion
  static const initialRoute = 'home';

  ///Lista de rutas definida por el usuario con el Widget MenuOption creado
  static final menuOptions = <MenuOption>[
    // MenuOption(route: 'home', icon: Icons.home_filled, name: 'home', screen: const HomeScreen()),
    MenuOption(name: 'AlertScreen', icon: Icons.accessible_forward_outlined, route: 'alert', screen: const AlertScreen()),
    MenuOption(name: 'Card Screen', icon: Icons.abc_outlined, route: 'card', screen: const CardScreen()),
    MenuOption(name: 'listView1 Screen', icon: Icons.list_outlined, route: 'listView1', screen: const ListViewScreen()),
    MenuOption(name: 'listView2 Screen', icon: Icons.list_alt_outlined, route: 'listView2', screen: const ListView2Screen()),
    MenuOption(name: 'Text Inputs Screen', icon: Icons.input_outlined, route: 'text_inputs', screen: const InputsScreen()),

  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions){
      appRoutes.addAll({ option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    'alert'    : (BuildContext context) => const AlertScreen(),
    'card'     : (BuildContext context) => const CardScreen(),
    'home'     : (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListViewScreen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
  };
  */

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
        builder: (context) => const HomeScreen()
    );
  }
}