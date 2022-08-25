import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['Rachet and Clank', 'Spiderman 1', 'Spiderman 2', 'Spiderman 3',];

   const ListView2Screen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("List View 2 Home Screen"),
      ),
      body:  ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text( options[index] ),
          trailing: const Icon(Icons.arrow_forward_outlined),
          onTap: () {},
        ),
        separatorBuilder: (_, __) => const Divider() ,
        /*
        children: [

          ...options.map(
              (gameName) => ListTile(
                title: Text( gameName ),
                trailing: const Icon(Icons.arrow_forward_outlined),
              )
          ).toList()
          ListTile(
            title: Text("List View Home Screen"),
            leading: Icon(Icons.list_alt_outlined),
          )
        ],
        */
      )
    );
  }
}
