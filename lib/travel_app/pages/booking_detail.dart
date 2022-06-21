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
import 'payment.dart';

class BookingDetail extends StatefulWidget {
  static const String id = 'BookingDetail';

  const BookingDetail({Key key}) : super(key: key);

  @override
  _BookingDetailState createState() => _BookingDetailState();
}

class _BookingDetailState extends State<BookingDetail> {
  String dropdownValueCountry = '1';
  String dropdownValueCity = '1';

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
          title: const Text('Booking Details',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildItem(),
            _buildPromo(),
            _buildBillDetail(),
            const SizedBox(height: 20),
            MyElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  Payment()));
                },
                text: 'Pay Now',
                colors: appColor,
                height: 42,
                width: double.infinity),
          ],
        ),
      ),
    );
  }

  Widget _buildItem() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                blackHeading('Charge to pay'),
                MyTextButton(onPressed: () {}, text: 'Edit', colors: appColor),
              ],
            ),
            const SizedBox(height: 6),
            greyText('Disneyland, +91 9876543210'),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    greyText('Adult'),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 14),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 2),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 3.0,
                              )
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.remove,
                                    color: appColor2, size: 16)),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 14),
                              child: Text(
                                "1",
                                style: TextStyle(
                                    color: appColor2,
                                    fontSize: 12,
                                    fontFamily: 'bold'),
                              ),
                            ),
                            GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.add,
                                    color: appColor2, size: 16)),
                          ],
                        )),
                  ],
                ),
                Row(
                  children: [
                    greyText('Child'),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 14),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 2),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 3.0,
                              )
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.remove,
                                    color: appColor2, size: 16)),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 14),
                              child: Text(
                                "1",
                                style: TextStyle(
                                    color: appColor2,
                                    fontSize: 12,
                                    fontFamily: 'bold'),
                              ),
                            ),
                            GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.add,
                                    color: appColor2, size: 16)),
                          ],
                        )),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPromo() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            blackHeading('Apply Promo Code'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: textFieldHint('Add promo code')),
                MyTextButton(onPressed: () {}, text: 'Edit', colors: appColor),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBillDetail() {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              greyText("Per Person"),
              greyText("\$1000"),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              greyText("Total Persons x5"),
              greyText("\$5000"),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appcolorText("Promo Code"),
              appcolorText("-\$1000"),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(thickness: 1, color: Colors.black12),
          const SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              blackText("Total Amount"),
              blackHeading("\$14,345"),
            ],
          ),
        ],
      ),
    );
  }
}
