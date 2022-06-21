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

class Register extends StatefulWidget {
  static const String id = 'Register';

  const Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                  child: blackHeading("Sign Up"),
                ),
                textField("Name"),
                textField("Email"),
                textField("Password"),
                textField("Phone Number"),
                const SizedBox(height: 24),
                MyElevatedButton(
                    onPressed: () {},
                    text: 'Sign Up',
                    colors: appColor,
                    height: 42,
                    width: double.infinity),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50))),
                    child: Image.asset(
                      'assets/images/facebook.png',
                      width: 26,
                      height: 26,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50))),
                    child: Image.asset(
                      'assets/images/google.png',
                      width: 26,
                      height: 26,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?',
                      style: TextStyle(color: Colors.white, fontSize: 14)),
                  MyTextButton(
                      onPressed: () {}, text: 'Login', colors: Colors.white)
                ],
              )
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
