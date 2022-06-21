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

class Search extends StatefulWidget {
  static const String id = 'Search';

  const Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
                  child: blackHeading("Search"),
                ),
                // const SizedBox(height: 16),
                textField("Type Your Text"),

                const SizedBox(height: 60),
                MyElevatedButton(
                    onPressed: () {},
                    text: 'Search',
                    colors: appColor,
                    height: 42,
                    width: double.infinity),
              ],
            ),
          ),
          const Text(
            '',
            style: TextStyle(color: Colors.white, fontSize: 14),
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
