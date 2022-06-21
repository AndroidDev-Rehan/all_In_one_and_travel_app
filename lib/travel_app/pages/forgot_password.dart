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
import '../widget/elevated_button.dart';
import '../widget/text_btn.dart';

class ForgotPassword extends StatefulWidget {
  static const String id = 'ForgotPassword';

  const ForgotPassword({Key key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: SingleChildScrollView(child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: const EdgeInsets.all(24),
      height: MediaQuery.of(context).size.height * 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          logoImg(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: blackHeading("Forgot Password?"),
                ),
                textField("Enter Email Address"),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        blackText('Dont have an account?  '),
                        MyTextButton(
                            onPressed: () {},
                            text: 'Register Now',
                            colors: appColor),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 50),
                MyElevatedButton(
                    onPressed: () {},
                    text: 'Forgot',
                    colors: appColor,
                    height: 42,
                    width: double.infinity),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Having Trouble?',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              MyTextButton(
                  onPressed: () {}, text: 'Get Help', colors: Colors.white)
            ],
          )
        ],
      ),
    );
  }

  logoImg() {
    return Image.asset(
      'assets/images/logo.png',
      width: 100,
      height: 80,
      color: Colors.white,
    );
  }
}
