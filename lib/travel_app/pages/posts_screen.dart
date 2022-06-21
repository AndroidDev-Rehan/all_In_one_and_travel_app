/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Outing Trip Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:home_services/travel_app/pages/search.dart';
import '../components/styles.dart';
import '../widget/navbar.dart';
import 'filter.dart';
import 'place_detail.dart';

class PostScreen extends StatefulWidget {
  static const String id = 'PostScreen';

  const PostScreen({Key key}) : super(key: key);

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  int tabID = 1;
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

  List<Tab> tabList = <Tab>[
    const Tab('India'),
    const Tab('USA'),
    const Tab('Australia'),
    const Tab('Canada'),
    const Tab('France'),
    const Tab('Spain'),
    const Tab('Malasia'),
    const Tab('Japan'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black54),
          elevation: 2,
          centerTitle: true,
          title: const Text('TOURS',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Filter()));
                },
                icon: const Icon(Icons.filter_list)),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Search()));
                },
                icon: const Icon(Icons.search)),
          ],
          bottom: PreferredSize(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: tabList.map((e) {
                    return _buildTab(context, e);
                  }).toList(),
                ),
              ),
            ),
            preferredSize: const Size(0.0, 40.0),
          ),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: travelList.length,
      itemBuilder: (context, i) => Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PlaceDetail()));
            },
            child: Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 12,
                      color: appColor3,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(travelList[i].img),
                          fit: BoxFit.cover),
                    ),
                    child: Stack(
                      children: const [
                        Positioned(
                            bottom: 8,
                            right: 8,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 16,
                              child: Icon(Icons.favorite,
                                  color: Colors.white, size: 20),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(travelList[i].city,
                            style: const TextStyle(
                                color: appColor,
                                fontFamily: 'bold',
                                fontSize: 24)),
                        const SizedBox(height: 8),
                        blackText(
                            'A popular tourst destination, its characterized by its many beaches and hinteralnd'),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 16),
                    color: backgroundColor,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 90,
                          child: Stack(
                            children: const [
                              Align(
                                alignment: Alignment.centerRight,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundImage:
                                        AssetImage('assets/images/p1.jpg'),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundImage:
                                        AssetImage('assets/images/p2.jpg'),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundImage:
                                        AssetImage('assets/images/p3.jpg'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 8),
                            blackHeadingSmall('3141'),
                            const SizedBox(width: 8),
                            blackText('loved this')
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTab(context, e) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tabID = e.hashCode;
        });
      },
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom: BorderSide(
                      width: 3,
                      color: tabID == e.hashCode ? appColor : Colors.white))),
          child: Text(
            e.name,
            style: TextStyle(
                color: tabID == e.hashCode ? appColor : Colors.black54,
                fontSize: 16,
                fontFamily: 'bold'),
          )),
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

class Tab {
  const Tab(this.name);
  final String name;
}
