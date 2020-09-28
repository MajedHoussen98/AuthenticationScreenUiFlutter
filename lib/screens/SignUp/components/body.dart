import 'package:auth_screen/constants.dart';
import 'package:auth_screen/screens/Login/login_screen.dart';
import 'package:auth_screen/screens/SignUp/components/background.dart';
import 'package:auth_screen/screens/SignUp/components/or_divider.dart';
import 'package:auth_screen/screens/SignUp/components/social_icons.dart';
import 'package:auth_screen/screens/Widgets/already_have_an_account_check.dart';
import 'package:auth_screen/screens/Widgets/main_button.dart';
import 'package:auth_screen/screens/Widgets/main_input_filed.dart';
import 'package:auth_screen/screens/Widgets/password_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      chlid: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            MainInputFiled(
                hintText: "Email", icon: Icons.person, onChanged: (value) {}),
            PasswordFiled(
              onChanged: (value) {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            MainButton(
                text: "SIGN UP",
                onPressed: () {},
                textColor: Colors.white,
                backgroundColor: kPrimaryColor),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
                login: true,
                press: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                }),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  press: () {},
                  iconSrc: "assets/icons/facebook.svg",
                ),
                SocialIcon(
                  press: () {},
                  iconSrc: "assets/icons/twitter.svg",
                ),
                SocialIcon(
                  press: () {},
                  iconSrc: "assets/icons/google-plus.svg",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
