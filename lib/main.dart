import 'package:flutter/material.dart';
import 'package:list_components_fernando_herrera/router/app_routes.dart';
import 'package:list_components_fernando_herrera/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const CardScreen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings),
      theme: AppTheme.lightTheme,
    );
  }
}
