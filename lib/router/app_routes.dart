
import 'package:fl_componentes/models/models.dart';
import 'package:fl_componentes/screens/screens.dart';
import 'package:flutter/material.dart';


class AppRoutes {
  static const  initialRoute = "home";
  static final optionsMenu = <MenuOptions>[
    //MenuOptions(route: 'home', icon: Icons.home, name: "Home Screen", screen: const HomeScreen()),
    MenuOptions(route: 'alert', icon: Icons.warning, name: "Alert Screen", screen: const AlertScreen()),
    MenuOptions(route: 'card', icon: Icons.card_membership, name: "Card Screen", screen: const CardScreen()),
    MenuOptions(route: 'listview1', icon: Icons.list, name: "ListView Screen", screen: const ListView1Screen()),
    MenuOptions(route: 'avatar', icon: Icons.supervised_user_circle_outlined, name: "Circle Avatar", screen: const AvatarScreen()),
    MenuOptions(route: 'animated', icon: Icons.play_circle_fill_outlined, name: "Animated Container", screen: const AnimatedScreen()),
    MenuOptions(route: 'input', icon: Icons.input_outlined, name: "Input Form", screen: const InputScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final item in optionsMenu) {
      appRoutes.addAll({
        'home':(BuildContext context) =>  HomeScreen()
      });
      appRoutes.addAll({
          item.route:(BuildContext context) =>  item.screen
        });
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes =  {
        // 'alert':(BuildContext context) =>  const AlertScreen(),
        // 'card':(BuildContext context)  => const CardScreen(),
        // 'home':(BuildContext context)  => const HomeScreen(),
        // 'listview1':(BuildContext context) =>  const ListView1Screen()
      // };
  static Route<dynamic> onGenerateRoute(RouteSettings setting){
        return MaterialPageRoute(builder: (context){
            return const AlertScreen();
        });
      }
  
}