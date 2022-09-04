import 'package:components_application/Theme/app_theme.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
        context: context,
        builder: (context){
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
            elevation: 5,
            title: const Text("Alerta!!!"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("Este es el contenido de la alerta"),
                SizedBox(height: 10),
                FlutterLogo(size: 100,),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Close"))
            ],
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Screen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
          },
        child: const Icon(
          Icons.close_outlined,
        ),
      ),
        body: Center(
            child: ElevatedButton(
              onPressed: (){
                displayDialog(context);
              },
              child: const Text("Press the button"))
        )
    );
  }
}
