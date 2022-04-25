import 'package:fl_componentes/router/app_routes.dart';
import 'package:fl_componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: (setting) => AppRoutes.onGenerateRoute(setting),
      theme: AppTheme.lightTheme,
    );
  }
}