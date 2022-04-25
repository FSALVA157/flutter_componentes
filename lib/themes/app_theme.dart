
import 'package:flutter/material.dart';

class AppTheme{


  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme =  ThemeData.light().copyWith(
        primaryColor: primary,
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: primary
          )
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 0
          ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
           primary: primary,
           shape: const StadiumBorder(),
           elevation: 0
          )
        ),
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomLeft: Radius.circular(10))
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
            borderSide: BorderSide(color: primary)
            ),
                              // ),
          border: OutlineInputBorder(
             borderRadius: BorderRadius.only(
               bottomLeft: Radius.circular(10),
               topRight: Radius.circular(10)
             ))            
        )
      );

}