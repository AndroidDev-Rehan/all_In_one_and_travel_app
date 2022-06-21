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
import '../widget/navbar.dart';

class NotificationScreen extends StatefulWidget {
  static const String id = 'NotificationScreen';

  const NotificationScreen({Key key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavBar(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black54),
          elevation: 0,
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
          title: const Text('Notifications',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 20,
      itemBuilder: (context, i) => Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/p3.jpg'),
                radius: 22),
            title: boldText(
                'Fans of Mickey can visit Disneyland Paris which is located 32 km from central Paris...'),
            subtitle: greyTextSmall('Dec 20, 2023 at 12:02 AM'),
          ),
          const Divider(thickness: 1, color: backgroundColor)
        ],
      ),
    );
  }
}
