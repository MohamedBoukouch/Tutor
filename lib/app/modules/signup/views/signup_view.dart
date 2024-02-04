import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tutor/app/config/constants/app_constant.dart';
import 'package:tutor/app/modules/login/views/login_view.dart';
import 'package:tutor/app/shared/bottun.dart';
import 'package:tutor/app/shared/edittext.dart';
import 'package:tutor/app/shared/switcher.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _signupKey = GlobalKey<FormState>();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _nomController = TextEditingController();
    final TextEditingController _prenomController = TextEditingController();
    bool isLoading = false;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Form(
                  key: _signupKey,
                  child: Container(
                    margin:
                        EdgeInsets.only(top: AppConstant.screenHeight * .17),
                    padding: EdgeInsets.only(
                        right: AppConstant.screenHeight * .02,
                        left: AppConstant.screenHeight * .02),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              bottom: AppConstant.screenHeight * .1),
                          child: Switcher(
                            index: 2,
                          ),
                        ),
                        Edittext(
                          readonly: false,
                          hint: "Nom".tr,
                          icon: const Icon(Icons.person_2_outlined),
                          Controller: _nomController,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Vide";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: AppConstant.screenHeight * .03,
                        ),
                        Edittext(
                          readonly: false,
                          hint: "Prenom".tr,
                          isemail: true,
                          icon: const Icon(Icons.person_2_outlined),
                          Controller: _prenomController,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Vide";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: AppConstant.screenHeight * .03,
                        ),
                        Edittext(
                          readonly: false,
                          hint: "Address".tr,
                          isemail: true,
                          ispassword: false,
                          icon: const Icon(Icons.email_outlined),
                          Controller: _emailController,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Vide";
                            } else if (!value.contains("@") ||
                                !value.contains(".")) {
                              return "Invalid Email";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: AppConstant.screenHeight * .03,
                        ),
                        Edittext(
                          readonly: false,
                          hint: "Mote_de_pass".tr,
                          ispassword: true,
                          icon: const Icon(Icons.lock),
                          Controller: _passwordController,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Vide";
                            } else if (value.length < 6) {
                              return "Entrez un mot de passe supérieur à 6 caractères";
                            }

                            return null; // Input is valid
                          },
                        ),
                        SizedBox(
                          height: AppConstant.screenHeight * .03,
                        ),
                        SizedBox(
                          height: AppConstant.screenHeight * .03,
                        ),
                        InkWell(
                          onTap: () async {
                            // if (_signupKey.currentState!.validate()) {
                            //   FocusScope.of(context).unfocus();
                            //   setState(() {
                            //     isLoading = true;
                            //   });

                            //   try {
                            //     await controller.signup(
                            //         _nomController.text,
                            //         _prenomController.text,
                            //         _emailController.text,
                            //         _passwordController.text);
                            //   } catch (e) {
                            //     print(e);
                            //   } finally {
                            //     setState(() {
                            //       isLoading = false;
                            //     });
                            //   }
                            // }
                          },
                          child: Button(
                            txt: "Connexion".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // if (isLoading)
          //   Container(
          //     color: Colors.black.withOpacity(0.5),
          //     child: const Center(
          //       child: CircularProgressIndicator(
          //         color: Colors.orange,
          //         // strokeWidth: 30,
          //       ),
          //     ),
          //   ),
        ],
      ),
    );
  }
}
