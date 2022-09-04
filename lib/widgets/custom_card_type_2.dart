import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? title;

  const CustomCardType2({Key? key, required this.imageUrl,this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      elevation:10,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage("assets/jar-loading.gif"),
            image: NetworkImage(imageUrl), //"https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg"
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
          ),
          if(title != null)
            Container(
                alignment: AlignmentDirectional.topEnd,
                padding: const EdgeInsets.only(
                  right: 15,
                  bottom: 10,
                  top: 10,
                ),
                child: Text(title!)
            )
        ],
      ) ,
    );
  }
}
