import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final options = const ['Rachet and Clank', 'Spiderman 1', 'Spiderman 2', 'Spiderman 3',];

   const ListViewScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("List View Home Screen"),
      ),
      body:  ListView(
        children: [

          ...options.map(
              (gameName) => ListTile(
                title: Text( gameName ),
                trailing: const Icon(Icons.arrow_forward_outlined),
              )
          ).toList()
          // ListTile(
          //   title: Text("List View Home Screen"),
          //   leading: Icon(Icons.list_alt_outlined),
          // )
        ],
      )
    );
  }
}
