import 'package:components_application/widgets/custom_card.dart';
import 'package:components_application/widgets/custom_card_type_2.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card Screen"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          children: const [
            CustomCard(),
            SizedBox(height: 10,),
            CustomCardType2(
              imageUrl: "https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg",
            ),
            SizedBox(height: 10,),
            CustomCardType2(
              imageUrl: "https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg",
                title: "Hola chivo",
            ),
            SizedBox(height: 10,),
            CustomCardType2(
              imageUrl: "https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg",
                title: "adios",
            ),
            SizedBox(height: 10,),
            CustomCardType2(
              imageUrl: "https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg",
                title: "holaaaaa",
            ),
            SizedBox(height: 10,),
            CustomCardType2(
              imageUrl: "https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg",
                title: "que estas haciendo?",
            ),
            SizedBox(height: 10,),
            CustomCardType2(
              imageUrl: "https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg",
            ),
            SizedBox(height: 50,)
          ],
        )
    );
  }
}


