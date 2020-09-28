import 'package:auth_screen/constants.dart';
import 'package:auth_screen/screens/Widgets/text_filed_container.dart';
import 'package:flutter/material.dart';

class PasswordFiled extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const PasswordFiled({Key key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
