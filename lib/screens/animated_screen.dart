import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);
  Color _color = Colors.black;
  _onChangeForm(){
    setState(() {
      _color = Color.fromRGBO(
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
        1);
      _width = Random().nextInt(300) + 70;
      _height = Random().nextInt(300) + 70;
      _borderRadius =  BorderRadius.circular(Random().nextInt(100).toDouble() + 10);

    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Animated Container'),),
      ),
      body: Center(
         child: AnimatedContainer(
           duration: const Duration(
             milliseconds: 400
           ),
           curve: Curves.fastOutSlowIn,
           width: _width,
           height: _height,
           decoration: BoxDecoration(
             borderRadius: _borderRadius,
             color: _color
           ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_sharp, size: 35,),
        onPressed: (){
            _onChangeForm();
        },
      ),
    );
  }
}