import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutor/app/config/constants/app_constant.dart';
import 'package:tutor/app/config/themes/app_theme.dart';
import 'package:tutor/app/modules/login/views/login_view.dart';
import 'package:tutor/app/modules/signup/views/signup_view.dart';

class Switcher extends StatefulWidget {
  int index;
  Switcher({super.key, required this.index});

  @override
  State<Switcher> createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        width: AppConstant.screenWidth * .6,
        height: AppConstant.screenHeight * .06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(255, 240, 238, 238),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Get.to(() => LoginView()),
              child: Container(
                padding: EdgeInsets.all(2),
                width: AppConstant.screenWidth * .28,
                height: AppConstant.screenHeight * .05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: widget.index == 1 ? AppTheme.main_color_2 : null,
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: widget.index == 1
                            ? Colors.white
                            : AppTheme.main_color_2),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 1,
            ),
            InkWell(
              onTap: () => Get.to(() => SignupView()),
              child: Container(
                padding: EdgeInsets.all(2),
                width: AppConstant.screenWidth * .28,
                height: AppConstant.screenHeight * .05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: widget.index == 2 ? AppTheme.main_color_2 : null,
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: widget.index == 2
                            ? Colors.white
                            : AppTheme.main_color_2),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
