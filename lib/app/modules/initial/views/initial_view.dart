import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutor/app/config/themes/app_theme.dart';
import 'package:tutor/app/modules/home/views/home_view.dart';
import 'package:tutor/app/modules/initial/controllers/initial_controller.dart';
import 'package:tutor/app/modules/login/views/login_view.dart';
import 'package:tutor/app/modules/profile/views/profile_view.dart';
import 'package:tutor/app/modules/signup/views/signup_view.dart';

class InitialView extends GetView<InitialController> {
  final int selectedindex;
  final Widget? body;
  final PreferredSizeWidget? appbar;
  const InitialView({Key? key, this.selectedindex = 0, this.body, this.appbar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    late int not = 0;
    return Scaffold(
      appBar: appbar,
      backgroundColor: Colors.white,
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Add this line
        backgroundColor: Colors.white,
        currentIndex: selectedindex,
        onTap: (int index) {
          switch (index) {
            case 0:
              Get.off(() => const ProfileView());
              break;
            case 1:
              Get.off(() => HomeView());
              break;

            case 2:
              Get.off(() => const HomeView());
              break;
            case 3:
              Get.off(() => const HomeView());
              break;
            default:
              Get.off(() => const HomeView());
          }
        },
        selectedItemColor: const Color.fromARGB(255, 247, 134, 6),
        unselectedItemColor: Color.fromARGB(255, 161, 161, 161),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedLabelStyle: const TextStyle(color: Colors.transparent),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
              color: AppTheme.main_color_3,
            ),
            icon: Icon(
              Icons.person,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.search,
              color: Colors.orange,
            ),
            icon: Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.map,
              color: Colors.orange,
            ),
            icon: Icon(Icons.map),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.orange,
            ),
            icon: Icon(Icons.home),
            label: "",
          ),
        ],
      ),
    );
  }
}
