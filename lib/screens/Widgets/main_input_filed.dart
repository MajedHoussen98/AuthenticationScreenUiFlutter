import 'package:auth_screen/constants.dart';
import 'package:auth_screen/screens/Widgets/text_filed_container.dart';
import 'package:flutter/material.dart';

class MainInputFiled extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const MainInputFiled({Key key, @required this.hintText, @required this.icon, @required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none
        ),
      ),
    );
  }
}
