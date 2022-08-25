import 'package:flutter/material.dart';
import 'package:components_application/screens/screens.dart';

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
    initialRoute: 'home',
    routes: {
        'alert'    : (BuildContext context) => const AlertScreen(),
        'card'     : (BuildContext context) => const CardScreen(),
        'home'     : (BuildContext context) => const HomeScreen(),
        'listview1': (BuildContext context) => const ListViewScreen(),
        'listview2': (BuildContext context) => const ListView2Screen(),
      },
    );
  }
}
