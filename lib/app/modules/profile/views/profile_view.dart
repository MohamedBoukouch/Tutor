import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutor/app/config/constants/app_constant.dart';
import 'package:tutor/app/config/themes/app_theme.dart';
import 'package:tutor/app/modules/initial/views/initial_view.dart';
import 'package:tutor/app/modules/profile/widgets/customswitch.dart';
import 'package:tutor/app/modules/profile/widgets/slide_1.dart';
import 'package:tutor/app/modules/profile/widgets/slide_2.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return InitialView(
      selectedindex: 0,
      body: ListView(
        children: [
          Slide1(),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: const Text(
              "My Tutor",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Bitter'),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Slide2(
            titel: "Preferences",
            icon: Icon(Icons.settings),
          ),
          const Slide2(
            titel: "Saved List",
            icon: Icon(Icons.favorite),
          ),
          const Slide2(
            titel: "Intersted",
            icon: Icon(Icons.photo_camera_back_outlined),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: const Text(
              "Settings",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Bitter'),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Slide2(
            titel: "Preferences",
            icon: Icon(Icons.settings),
          ),
          const Slide2(
            titel: "Account",
            icon: Icon(Icons.person),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: const Text(
              "Resources",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Bitter'),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Slide2(
            titel: "Contactez nous",
            icon: Icon(Icons.settings),
          ),
          const Slide2(
            titel: "Suporte",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
    ;
  }
}
