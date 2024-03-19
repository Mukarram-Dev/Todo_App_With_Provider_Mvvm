import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/configs/routes/routes.dart';
import 'package:task_management/configs/routes/routes_name.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/view%20model/home_view_model.dart';
import 'package:task_management/views/add_task/notifiers/description_notifier.dart';
import 'package:task_management/views/add_task/notifiers/select_user_notifier.dart';
import 'package:task_management/views/add_task/notifiers/selected_priority.dart';
import 'package:task_management/views/bottom_nav_home/nav_controller/nav_controller.dart';
import 'package:task_management/views/home/controller/task_list_notifier.dart';
import 'package:task_management/views/introduction/controller/intro_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeViewModel()),
        ChangeNotifierProvider(create: (context) => NavPageController()),
        ChangeNotifierProvider(create: (context) => TaskListNotifier()),
        ChangeNotifierProvider(create: (context) => SelectedPriority()),
        ChangeNotifierProvider(create: (context) => SelectUserNotifier()),
        ChangeNotifierProvider(create: (context) => DescriptionNotifier()),
        ChangeNotifierProvider(create: (context) => IntroNotifier()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        ),
        // this is the initial route indicating from where our app will start
        initialRoute: RouteName.introRoute,
        onGenerateRoute: AppRoutes.generateRoute,
      ),
    );
  }
}
