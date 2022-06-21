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
import 'card_detail.dart';

class Payment extends StatefulWidget {
  static const String id = 'Payment';

  const Payment({Key key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black54),
          elevation: 0,
          centerTitle: true,
          title: const Text('Payment',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Online Payments',
                style: TextStyle(fontSize: 20, fontFamily: 'medium')),
            greyText(
                'After your first payment. we will save your details for future use.'),
            const Divider(thickness: 1, color: backgroundColor),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CardDetail()));
              },
              leading: const Icon(Icons.credit_card, color: appColor),
              minLeadingWidth: 0,
              title: mediumText('Credit, Debit & ATM Cards'),
              trailing: const Icon(Icons.chevron_right, color: Colors.grey),
            ),
            const Divider(thickness: 1, color: backgroundColor),
            ListTile(
              leading: const Icon(Icons.credit_card, color: appColor),
              minLeadingWidth: 0,
              title: mediumText('Net Banking'),
              trailing: const Icon(Icons.chevron_right, color: Colors.grey),
            ),
            const Divider(thickness: 1, color: backgroundColor),
            ListTile(
              leading: const Icon(Icons.credit_card, color: appColor),
              minLeadingWidth: 0,
              title: mediumText('PayPal'),
              trailing: const Icon(Icons.chevron_right, color: Colors.grey),
            ),
            const Divider(thickness: 1, color: backgroundColor),
            ListTile(
              leading: const Icon(Icons.credit_card, color: appColor),
              minLeadingWidth: 0,
              title: mediumText('Visa Card'),
              trailing: const Icon(Icons.chevron_right, color: Colors.grey),
            ),
          ],
        ));
  }
}
