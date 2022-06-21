/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Outing Trip Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:home_services/travel_app/pages/tabs.dart';
import '../components/styles.dart';
import '../widget/elevated_button.dart';

class PaymentSuccess extends StatefulWidget {
  static const String id = 'PaymentSuccess';

  const PaymentSuccess({Key key}) : super(key: key);

  @override
  _PaymentSuccessState createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: const EdgeInsets.all(24),
      height: MediaQuery.of(context).size.height * 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(28),
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: appColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50))),
                    child: const Icon(Icons.done, color: appColor, size: 50)),
                const SizedBox(height: 24),
                const Text(
                  'Payment Successful!',
                  style: TextStyle(
                      color: appColor, fontFamily: 'bold', fontSize: 26),
                ),
                const SizedBox(height: 16),
                greyText('Credit Card'),
                const SizedBox(height: 8),
                greyText('**** **** **** 1234'),
                const SizedBox(height: 8),
                greyText('15 July 2023 15:30 PM'),
                const SizedBox(height: 24),
                MyElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TabsExample()));
                    },
                    text: 'Continue',
                    colors: appColor,
                    height: 42,
                    width: double.infinity),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
