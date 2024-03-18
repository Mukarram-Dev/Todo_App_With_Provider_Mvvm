import 'package:flutter/material.dart';
import 'package:task_management/configs/routes/routes_name.dart';
import 'package:task_management/views/add_task/add_task_view.dart';
import 'package:task_management/views/bottom_nav_home/bottom_nav_home.dart';
import 'package:task_management/views/calender/calender_view.dart';
import 'package:task_management/views/home/home_view.dart';
import 'package:task_management/views/introduction/intro_screen.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.introRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => const IntroScreen());

      case RouteName.bottomNavRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => const BottomNavHome());

      case RouteName.calenderRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => const CalenderView());

      case RouteName.homeRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeView());
      case RouteName.addTaskRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddTaskView());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
