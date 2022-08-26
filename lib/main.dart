import 'package:flutter/material.dart';
import 'package:components_application/screens/screens.dart';
import 'package:components_application/router/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: const AlertScreen(),
    initialRoute: AppRoutes.initialRoute,
    routes: AppRoutes.routes,
      onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings),
    );
  }
}
