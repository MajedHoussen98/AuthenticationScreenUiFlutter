import 'package:auth_screen/screens/Login/login_screen.dart';
import 'package:auth_screen/screens/SignUp/sign_up_screen.dart';
import 'package:auth_screen/screens/Welcome/components/background.dart';
import 'package:auth_screen/screens/Widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WELCOME TO MY APP ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            MainButton(
              backgroundColor: kPrimaryColor,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
              textColor: Colors.white,
              text: "LOGIN",
            ),
            MainButton(
              backgroundColor: kPrimaryLightColor,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
              textColor: kPrimaryColor,
              text: "SIGN UP",
            ),
          ],
        ),
      ),
    );
  }
}
