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
import 'booking_detail.dart';
import 'choose_date.dart';

class Booking extends StatefulWidget {
  static const String id = 'Booking';

  const Booking({Key key}) : super(key: key);

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
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
          title: const Text('Booking Now',
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
            textFieldHint('First Name'),
            textFieldHint('Last Name'),
            textFieldHint('Email Id'),
            textFieldHint('Contact Number'),
            textFieldHint('Address'),
            const SizedBox(height: 12),
            blackHeading('Date & Time'),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChooseDate()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black38))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    greyText('Start Tour'),
                    const Icon(Icons.calendar_month, color: Colors.black38)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  ChooseDate()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black38))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    greyText('End Tour'),
                    const Icon(Icons.calendar_month, color: Colors.black38)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            blackHeading('Members'),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(child: blackHeadingSmall('adult')),
                const SizedBox(width: 20),
                Expanded(child: blackHeadingSmall('child'))
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: DropdownButton<String>(
                  value: dropdownValueCountry,
                  iconSize: 0.0,
                  style: const TextStyle(color: Colors.black87),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValueCountry = newValue;
                    });
                  },
                  items: <String>['0', '1', '2', '3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )),
                const SizedBox(width: 20),
                Expanded(
                    child: DropdownButton<String>(
                  value: dropdownValueCity,
                  iconSize: 0.0,
                  style: const TextStyle(color: Colors.black87),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValueCity = newValue;
                    });
                  },
                  items: <String>['0', '1', '2', '3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ))
              ],
            ),
            const SizedBox(height: 16),
            MyElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  BookingDetail()));
                },
                text: 'Continue',
                colors: appColor,
                height: 42,
                width: double.infinity),
          ],
        ));
  }
}
