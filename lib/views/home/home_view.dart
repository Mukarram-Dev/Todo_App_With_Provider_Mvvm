import 'package:flutter/material.dart';

import 'package:task_management/utils/dimensions.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // final propertyController = Get.find<PropertyController>();

    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
        child: Text('Home'),
      ),
    );
  }
}
