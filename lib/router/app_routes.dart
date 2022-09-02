
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
    MenuOption(route: 'alert', icon: Icons.accessible_forward_outlined, name: 'alert', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.abc, name: 'card', screen: const CardScreen()),
    MenuOption(route: 'listView1', icon: Icons.list_outlined, name: 'listView1', screen: const ListViewScreen()),
    MenuOption(route: 'listView2', icon: Icons.abc, name: 'listView2', screen: const ListView2Screen()),

  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions){
      appRoutes.addAll({ option.name: (BuildContext context) => option.screen});
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