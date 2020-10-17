import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class NavigatorController extends GetxController {
  int currentPage = 0;

  Function(int index) animateToPage;

  NavigatorController({this.animateToPage}) {
    initMessaging();
  }

  initMessaging() {
    FirebaseMessaging _fcm = FirebaseMessaging();
    _fcm.configure(
      onLaunch: (message) async {
        print(message);
      },
      onMessage: (message) async {
        print(message);
      },
      onResume: (message) async {
        print(message);
      },
    );
  }

  changePage(index) {
    currentPage = index;
    update();
    animateToPage(index);
  }
}
