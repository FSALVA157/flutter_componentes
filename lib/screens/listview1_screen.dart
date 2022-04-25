import 'dart:math';

import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  
  final lista = const ["ITEM 1", "ITEM 2", "ITEM 3", "ITEM 4", "ITEM 5", "ITEM 6", "ITEM 7", "ITEM 8", "ITEM 9", "ITEM 10" ];

  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 1'),
      ),
      body: ListView.separated(
        itemCount: lista.length,
        itemBuilder:(BuildContext context, int index){
          return ListTile(
            title: Center(
              child: Text(lista[index]),
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: (){},
          );
        },
        separatorBuilder:(_,__)=> Divider(color: Colors.amberAccent,)
        )
    );
  }
}