import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  final String urlImage;
  final String? imageName;
  const CustomCard2({Key? key,required this.urlImage, this.imageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(urlImage),
            width: double.infinity,
            height: 165,
            fit: BoxFit.cover,
          ),
          
          if(imageName != null)
           Padding(
            padding:  EdgeInsets.all(10.0),
            child: Center(child: Text(imageName?? "sin nombre")),
          )
        ],
      ),
    );
  }
}
