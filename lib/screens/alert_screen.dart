import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context){
    showDialog(
     // barrierDismissible: true,
      context: context,
      builder: (context){
          return  AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15)),
            title: const Text('titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                  Text('Este es el Contenido del Logo'),
                  SizedBox(),
                  FlutterLogo(size: 100,)
              ],
            ),
            actions: [
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: const Text('Cancelar')
                )
            ],
          );
      });
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
         child: ElevatedButton(
           onPressed: (){
              return displayDialog(context);
           },
           child: const Padding(
             padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 20),
             child:  Text('Mostrar Alerta', style: TextStyle(
               fontSize: 16
             ),),
           )
           ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close_outlined),
        onPressed: (){
            Navigator.pop(context);
        },
        ),
    );
  }
}