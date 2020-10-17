import 'package:fcm_test/navigator/controller/navigator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class NavigatorView extends StatefulWidget {
  NavigatorView({Key key}) : super(key: key);

  @override
  _NavigatorViewState createState() => _NavigatorViewState();
}

class _NavigatorViewState extends State<NavigatorView> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  animateToPage(int index) {
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 200), curve: Curves.decelerate);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigatorController>(
      init: NavigatorController(animateToPage: animateToPage),
      builder: (_) => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.red.shade900,
          currentIndex: _.currentPage,
          onTap: (int index) => _.changePage(index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text("Anasayfa"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text("Mesajlar"),
            ),
          ],
        ),
        body: Container(
          child: PageView(
            children: [
              Container(
                child: Center(
                  child: Text("Anasayfa"),
                ),
              ),
              Container(
                child: Center(
                  child: Text("Mesajlar"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
