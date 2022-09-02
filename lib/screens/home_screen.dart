import 'package:components_application/router/app_routes.dart';
import 'package:components_application/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Componentes de flutter"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              title: Text( menuOptions[index].name),
              leading: Icon( menuOptions[index].icon ),
              /* This is one way to push to another route
              onTap: (){
                final route = MaterialPageRoute(
                    builder:(context) => const ListViewScreen()
                );
                Navigator.push(context, route);
              },
              And the following is a second way to push to another route*/
              onTap: (){
                Navigator.pushNamed(context, menuOptions[index].route);
              },

            ),
            separatorBuilder: (_, __) => Divider(),
            itemCount: menuOptions.length)
    );
  }
}
