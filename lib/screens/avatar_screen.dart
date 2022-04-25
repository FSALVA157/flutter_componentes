import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Dragon Ball'),),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: CircleAvatar(
                backgroundColor: Colors.indigo[900],
                child: const Text('DB'),
              ),
            )
          ],
      ),
      body: const Center(
         child: CircleAvatar(
           radius: 120,         
           backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI2HxQesrZAhrW_KPrg3KXBwrIQOefeY8Pgw&usqp=CAU'),
         ),
      ),
    );
  }
}