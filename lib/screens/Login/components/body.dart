import 'package:auth_screen/constants.dart';
import 'package:auth_screen/screens/Login/components/background.dart';
import 'package:auth_screen/screens/SignUp/sign_up_screen.dart';
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
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            MainInputFiled(
              icon: Icons.person,
              onChanged: (value) {},
              hintText: "Your Email",
            ),
            PasswordFiled(
              onChanged: (value) {},
            ),
            MainButton(
                text: "LOGIN",
                onPressed: () {},
                textColor: Colors.white,
                backgroundColor: kPrimaryColor),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                }),
            SizedBox(
              height: size.height * 0.05,
            ),

          ],
        ),
      ),
    );
  }
}
