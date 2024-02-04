import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutor/app/config/constants/app_constant.dart';
import 'package:tutor/app/config/themes/app_theme.dart';
import 'package:tutor/app/modules/login/views/login_view.dart';
import 'package:tutor/app/modules/profile/widgets/customswitch.dart';

class Slide1 extends StatefulWidget {
  const Slide1({super.key});

  @override
  State<Slide1> createState() => _Slide1State();
}

class _Slide1State extends State<Slide1> {
  bool _enable = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConstant.screenHeight * 0.3,
      child: Stack(
        children: [
          Container(
            width: AppConstant.screenWidth,
            height: AppConstant.screenHeight * .23,
            decoration: BoxDecoration(
              color: AppTheme.main_color_1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: AppConstant.screenHeight * .06,
                        left: AppConstant.screenWidth * .03),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor:
                              Colors.transparent, // Make background transparent
                          child: ClipOval(
                            child: Image.asset("assets/images/Profil.jpeg",
                                fit: BoxFit
                                    .cover, // Ensure the image covers the entire circular area
                                width: 75
                                //     80, // Double the radius to fit the entire circle
                                // height: 80,
                                ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Mehdi Jaldini",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Bitter',
                              fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 29,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: AppConstant.screenHeight * .07,
                width: AppConstant.screenWidth * .9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(219, 158, 158, 158)
                          .withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Text(
                    "Teacher mode",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: 'Bitter'),
                  ),
                  trailing: CustomSwitch(
                    value: _enable,
                    onChanged: (bool val) {
                      setState(() {
                        _enable = val;
                      });
                      // _enable == true ? Get.off(LoginView()) : null;
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
