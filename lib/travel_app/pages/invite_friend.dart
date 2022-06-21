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

class InviteFriend extends StatefulWidget {
  static const String id = 'InviteFriend';

  const InviteFriend({Key key}) : super(key: key);

  @override
  _InviteFriendState createState() => _InviteFriendState();
}

class _InviteFriendState extends State<InviteFriend> {
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
          title: const Text('Invite Friend',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Share With Friends',
                style: TextStyle(
                    color: appColor, fontFamily: 'bold', fontSize: 26),
              ),
              const SizedBox(height: 8),
              const Text(
                'Sed totorn ante. \n this is vestibulum non crissu id. \n porta imperfect purus.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black45, fontSize: 14),
              ),
              const SizedBox(height: 24),
              Image.asset('assets/images/s2.png',
                  width: double.infinity, height: 250, fit: BoxFit.fitHeight),
              const SizedBox(height: 24),
              MyElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  TabsExample()));
                  },
                  text: 'Invite Now',
                  colors: appColor,
                  height: 42,
                  width: double.infinity),
            ],
          ),
        ));
  }
}
