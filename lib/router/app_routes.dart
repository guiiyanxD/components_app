
import 'package:flutter/material.dart';

import '../screens/screens.dart';

/// Esta clase ha sido creade con el fin de poder gestionar aqui las rutas que tendra la app
class AppRoutes {

  /// Ruta que va definir la patanlla "raiz" de nuestra aplicacion
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'alert'    : (BuildContext context) => const AlertScreen(),
    'card'     : (BuildContext context) => const CardScreen(),
    'home'     : (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListViewScreen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
        builder: (context) => const AlertScreen()
    );
  }
}