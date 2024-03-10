import 'package:get/get.dart';
import 'package:task_management/res/routes/routes_name.dart';
import 'package:task_management/views/bottom_nav_home/bottom_nav_home.dart';
import 'package:task_management/views/home/home_view.dart';
import 'package:task_management/views/splash/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.splashRoute,
          page: () => const SplashScreen(),
          transitionDuration: const Duration(microseconds: 500),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.homeRoute,
          page: () => const HomeView(),
          transitionDuration: const Duration(microseconds: 500),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.bottomNavRoute,
          page: () => const BottomNavHome(),
          transitionDuration: const Duration(microseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        // GetPage(
        //   name: RouteName.propertyRoute,
        //   page: () => const PropertyView(),
        //   transitionDuration: const Duration(microseconds: 800),
        //   transition: Transition.leftToRight,
        // ),
        // GetPage(
        //   name: RouteName.favPropertyRoute,
        //   page: () => const FavouritePropertyView(),
        //   transitionDuration: const Duration(microseconds: 800),
        //   transition: Transition.leftToRightWithFade,
        // ),
        // GetPage(
        //   name: RouteName.savedPropertyRoute,
        //   page: () => const SavedPropertyView(),
        //   transitionDuration: const Duration(microseconds: 800),
        //   transition: Transition.leftToRightWithFade,
        // ),
      ];
}
