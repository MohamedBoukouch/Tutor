// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:taleb/app/config/constants/app_constant.dart';
// import 'package:taleb/app/modules/home/views/home_view.dart';
// import 'package:taleb/app/modules/login/controllers/login_controller.dart';
// import 'package:taleb/app/modules/login/pages/verifycompte.dart';
// import 'package:taleb/app/shared/bottun.dart';
// import 'package:taleb/app/shared/edittext.dart';

// class ResetPassword extends StatefulWidget {
//   final String email;
//   const ResetPassword({Key? key, required this.email}) : super(key: key);

//   @override
//   State<ResetPassword> createState() => _ResetPasswordState();
// }

// class _ResetPasswordState extends State<ResetPassword> {
//   final GlobalKey<FormState> _resetpasswordlKey = GlobalKey<FormState>();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _confirmpasswordController =
//       TextEditingController();
//   final LoginController controller = Get.put(LoginController());
//   late String _password;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: true,
//         title: Text("Forgot Password"),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Image.asset("assets/icons/close_lock.png"),
//               SizedBox(
//                 height: AppConstant.screenHeight * .05,
//               ),
//               Text(
//                   "Plais Enter your Email Address To \n Recieve a verification code."),
//               SizedBox(
//                 height: AppConstant.screenHeight * .05,
//               ),
//               Form(
//                 key: _resetpasswordlKey,
//                 child: Column(
//                   children: [
//                     Container(
//                       margin:
//                           EdgeInsets.only(right: AppConstant.screenWidth * .60),
//                       child: Text(
//                         "Password",
//                         style: TextStyle(color: Colors.grey),
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(
//                           left: AppConstant.screenHeight * .035,
//                           right: AppConstant.screenHeight * .035,
//                           top: AppConstant.screenHeight * .01),
//                       child: Edittext(
//                         readonly: false,
//                         hint: "password",
//                         ispassword: true,
//                         icon: const Icon(Icons.lock),
//                         Controller: _passwordController,
//                         validator: (String? value) {
//                           if (value == null || value.isEmpty) {
//                             return "Vide";
//                           } else if (value.length < 6) {
//                             return "Entrez un mot de passe supérieur à 6 caractères";
//                           }

//                           return null; // Input is valid
//                         },
//                         onSaved: (value) {
//                           _password = value;
//                         },
//                       ),
//                     ),
//                     Container(
//                       margin:
//                           EdgeInsets.only(right: AppConstant.screenWidth * .60),
//                       child: Text(
//                         "Confirm passwordl",
//                         style: TextStyle(color: Colors.grey),
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(
//                           left: AppConstant.screenHeight * .035,
//                           right: AppConstant.screenHeight * .035,
//                           top: AppConstant.screenHeight * .01),
//                       child: Edittext(
//                         hint: "Confirm password",
//                         readonly: false,
//                         ispassword: true,
//                         icon: const Icon(Icons.lock),
//                         Controller: _confirmpasswordController,
//                         validator: (String? value) {
//                           if (value == null || value.isEmpty) {
//                             return "Vide";
//                           } else if (value.length < 6) {
//                             return "Entrez un mot de passe supérieur à 6 caractères";
//                           } else {
//                             return null;
//                           }
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               InkWell(
//                 onTap: () async {
//                   if (_resetpasswordlKey.currentState!.validate()) {
//                     FocusScope.of(context).unfocus();
//                     try {
//                       await controller.resetpassword(
//                           widget.email, _passwordController.text, context);
//                     } catch (e) {}
//                   }
//                 },
//                 child: Button(
//                   txt: "Send",
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
