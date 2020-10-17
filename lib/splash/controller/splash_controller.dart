import 'dart:async';

import 'package:fcm_test/navigator/view/navigator_view.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  Timer timer;
  SplashController() {
    timer = Timer.periodic(Duration(seconds: 1), (e) {
      if (e.tick >= 6) {
        Get.offAll(NavigatorView());
      }
    });
  }
}
