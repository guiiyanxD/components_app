import 'package:components_application/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Componentes de flutter"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              title: const Text("Nombre de la ruta"),
              leading: const Icon(Icons.dangerous),
              /* This is one way to push to another route
              onTap: (){
                final route = MaterialPageRoute(
                    builder:(context) => const ListViewScreen()
                );
                Navigator.push(context, route);
              },
              And the following is a second way to push to another route*/
              onTap: (){
                Navigator.pushNamed(context, 'card');
              },

            ),
            separatorBuilder: (_, __) => Divider(),
            itemCount: 5)
    );
  }
}
