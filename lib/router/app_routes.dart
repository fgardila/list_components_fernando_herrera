import 'package:flutter/material.dart';
import 'package:list_components_fernando_herrera/models/models.dart';
import 'package:list_components_fernando_herrera/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: 'home',
      name: 'Home Screen',
      screen: const HomeScreen(),
      icon: Icons.home,),
    MenuOptions(
      route: 'listview1',
      name: 'Listview tipo 1',
      screen: const Listview1Screen(),
      icon: Icons.list,),
    MenuOptions(
      route: 'listview2',
      name: 'listview tipo 2',
      screen: const Listview2Screen(),
      icon: Icons.list_alt,),
    MenuOptions(route: 'alert',
      name: 'Alertas',
      screen: const AlertScreen(),
      icon: Icons.add_alert_outlined,),
    MenuOptions(
      route: 'card',
      name: 'Tarjetas - Cards',
      screen: const CardScreen(),
      icon: Icons.credit_card,),
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll(
          {option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

    /*static Map<String, Widget Function(BuildContext)> routes = {
    'home'      : (BuildContext context) => const  HomeScreen(),
    'listview1' : (BuildContext context) => const Listview1Screen(),
    'listview2' : (BuildContext context) => const Listview2Screen(),
    'alert'     : (BuildContext context) => const AlertScreen(),
    'card'      : (BuildContext context) => const CardScreen(),
  };*/

    static Route<dynamic> onGenerateRoute(RouteSettings settings) {
      print(settings);
      return MaterialPageRoute(builder: (context) => const AlertScreen());
    }
  }
