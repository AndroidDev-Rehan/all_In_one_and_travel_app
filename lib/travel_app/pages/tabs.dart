/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Outing Trip Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';

import 'favorite.dart';
import '../components/styles.dart' as style;
import 'home.dart';
import 'my_profile.dart';
import 'my_trip.dart';

class TabsExample extends StatefulWidget {
  const TabsExample({Key key}) : super(key: key);
  static const String id = 'Tabs';

  @override
  _TabsExampleState createState() => _TabsExampleState();
}

class _TabsExampleState extends State<TabsExample> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: (TabBar(
          labelColor: style.appColor,
          unselectedLabelColor: const Color.fromARGB(255, 185, 196, 207),
          indicatorColor: Colors.transparent,
          labelPadding: const EdgeInsets.symmetric(horizontal: 0),
          labelStyle: const TextStyle(
            fontFamily: 'regular',
            fontSize: 12,
          ),
          onTap: (int index) => setState(() => _currentIndex = index),
          tabs: [
            Tab(
              icon: Icon(Icons.home_outlined,
                  color: _currentIndex == 0
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.favorite_border,
                  color: _currentIndex == 1
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.wallet_travel,
                  color: _currentIndex == 2
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.calendar_month,
                  color: _currentIndex == 3
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.person_outline,
                  color: _currentIndex == 4
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
          ],
        )),
        body:  TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Home(),
            Favorite(),
            Home(),
            MyTrip(),
            MyProfile(),
          ],
        ),
      ),
    );
  }
}
