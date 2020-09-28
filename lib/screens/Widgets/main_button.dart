import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor, backgroundColor;

  const MainButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      @required this.textColor,
      @required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            onPressed: onPressed,
            color: backgroundColor,
            child: Text(
              text,
              style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
