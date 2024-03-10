import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management/res/assets/image_assets.dart';
import 'package:task_management/res/routes/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  RxBool animate = false.obs;

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.offNamed(RouteName.bottomNavRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: animate.value ? 200 : -80,
              left: animate.value ? 0 : -10,
              right: 20,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: animate.value ? 1 : 0,
                child: const Image(image: AssetImage(ImageAssets.appLogo)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
