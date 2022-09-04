import 'package:flutter/material.dart';

import '../Theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
            child: Column(
              children:  [
                const ListTile(
                  title: Text("Soy un titulo"),
                  subtitle: Text("data de prueba para probar el subtitulo de esta tarjeta en la que se esta trabajando a ver como es que sale y si hay salto de linea en el texto"),
                  leading: Icon(Icons.leak_add_outlined, color: AppTheme.primary,),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 5.0
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: (){

                        },
                        child: const Text("Ok")
                      ),
                      TextButton(
                          onPressed: (){

                          },
                          child: const Text(
                              "Cancel",
                            style: TextStyle(
                              color: Colors.blueAccent
                            ),
                          )
                      ),
                    ],
                  ),
                )
              ],
            )
        );
  }
}
