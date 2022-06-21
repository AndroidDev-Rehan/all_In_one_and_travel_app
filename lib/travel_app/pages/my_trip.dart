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
import '../widget/text_btn.dart';

class MyTrip extends StatefulWidget {
  static const String id = 'MyTrip';

  const MyTrip({Key key}) : super(key: key);

  @override
  _MyTripState createState() => _MyTripState();
}

class _MyTripState extends State<MyTrip> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:  NavBar(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black54),
          elevation: 0,
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
          title: const Text('My Trip',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TabBar(
          unselectedLabelColor: Colors.black,
          labelColor: appColor,
          controller: _tabController,
          indicatorColor: appColor,
          labelStyle: const TextStyle(fontFamily: 'medium', fontSize: 16),
          unselectedLabelStyle:
              const TextStyle(fontFamily: 'medium', fontSize: 16),
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: const [
            Tab(
              child: Text('Upcoming', style: TextStyle(fontFamily: 'medium')),
            ),
            Tab(
              child: Text('Completed', style: TextStyle(fontFamily: 'medium')),
            ),
            Tab(
              child: Text('Cancelled', style: TextStyle(fontFamily: 'medium')),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 20,
                itemBuilder: (context, i) => Column(
                  children: [_buildTrip()],
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 20,
                itemBuilder: (context, i) => Column(
                  children: [_buildTrip()],
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 20,
                itemBuilder: (context, i) => Column(
                  children: [_buildTrip()],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTrip() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
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
                blackHeadingSmall('Paris'),
                greyTextSmall('Booking 15 Jan')
              ],
            ),
            ListTile(
              leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/p3.jpg'),
                  radius: 22),
              title: boldText('Disneyland Paris'),
              subtitle: greyTextSmall('16 January - 20 January'),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyTextButton(
                    onPressed: () {}, text: 'Book Again', colors: appColor),
                MyTextButton(
                    onPressed: () {}, text: 'Need Help?', colors: appColor),
              ],
            )
          ],
        ),
      ),
    );
  }
}
