/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Outing Trip Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';

class MyElevatedButton extends StatelessWidget {
  final double height;
  final double width;

  final Gradient gradient;
  final VoidCallback onPressed;
  final String text;
  final Color colors;

  const MyElevatedButton({
    Key key,
    @required this.onPressed,
    @required this.text,
    @required this.colors,
    @required this.height,
    @required this.width,
    this.gradient = const LinearGradient(colors: [appColor, appColor]),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: colors,
          onPrimary: Colors.white,
          shadowColor: appColor,
          elevation: 3,
          shape: (RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          )),
        ),
        child: Text(
          text,
          style: const TextStyle(
            letterSpacing: 1,
            fontFamily: 'medium',
          ),
        ),
      ),
    );
  }
}
