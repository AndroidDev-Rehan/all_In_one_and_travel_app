/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Outing Trip Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/

import 'package:flutter/material.dart';
import '../pages/my_profile.dart';
import '../pages/notification.dart';
import '../pages/tabs.dart';
import '../pages/location.dart';
import '../pages/language.dart';
import '../pages/favorite.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Admin',
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: const Text(
              'admin@flutterninja.com',
              style: TextStyle(color: Colors.white),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/p2.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TabsExample()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('Location'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Location()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('My Profile'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyProfile()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.trip_origin),
            title: const Text('My Trip'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyProfile()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Language'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Language()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favourite'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Favorite()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Setttings'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Help'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
