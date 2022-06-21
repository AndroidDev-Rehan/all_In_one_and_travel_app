/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Outing Trip Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:home_services/travel_app/pages/place_detail.dart';

import '../widget/navbar.dart';

class Location extends StatefulWidget {
  static const String id = 'Location';

  const Location({Key key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List<Item> travelList = [
    Item(img: 'assets/images/t1.jpg', country: 'India', city: 'Mumbai'),
    Item(img: 'assets/images/t2.jpg', country: 'USA', city: 'New York'),
    Item(img: 'assets/images/t3.jpg', country: 'Spain', city: 'Madrid'),
    Item(img: 'assets/images/t4.jpg', country: 'Japan', city: 'Tokyo'),
    Item(img: 'assets/images/t5.jpg', country: 'France', city: 'Paris'),
    Item(img: 'assets/images/t6.jpg', country: 'England', city: 'London'),
    Item(img: 'assets/images/t7.jpg', country: 'Australiya', city: 'Sydeny'),
    Item(img: 'assets/images/t8.jpg', country: 'England', city: 'Tokyo'),
    Item(img: 'assets/images/t9.jpg', country: 'France', city: 'Taclobn'),
    Item(img: 'assets/images/t10.jpg', country: 'Japan', city: 'Ormoc'),
    Item(img: 'assets/images/t11.jpg', country: 'Malesia', city: 'Lumpur'),
  ];

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
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black54),
          elevation: 0,
          centerTitle: true,
          title: const Text('LOCATION',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: travelList.length,
      itemBuilder: (context, i) => Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  PlaceDetail()));
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                    image: AssetImage(travelList[i].img), fit: BoxFit.cover),
              ),
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      travelList[i].country,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'bold'),
                    ),
                    Text(
                      travelList[i].city,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'medium'),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Item {
  final String img;
  final String country;
  final String city;

  Item({
    @required this.img,
    @required this.country,
    @required this.city,
  });
}
