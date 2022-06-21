/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Outing Trip Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:home_services/travel_app/pages/posts_screen.dart';
import 'package:home_services/travel_app/pages/search.dart';
import '../components/styles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'location.dart';
import '../widget/navbar.dart';

class Home extends StatefulWidget {
  static const String id = 'Home';

  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tabID = 1;
  int current = 0;

  final CarouselController _controller = CarouselController();

  List<Item> cityList = <Item>[
    const Item('assets/images/t1.jpg', 'India'),
    const Item('assets/images/t2.jpg', 'Ormoc'),
    const Item('assets/images/t3.jpg', 'Taclobn'),
    const Item('assets/images/t4.jpg', 'Rio'),
    const Item('assets/images/t5.jpg', 'Tokyo'),
    const Item('assets/images/t6.jpg', 'Berlin'),
    const Item('assets/images/t7.jpg', 'Denver'),
    const Item('assets/images/t8.jpg', 'Los Angeles'),
    const Item('assets/images/t9.jpg', 'Madrid'),
    const Item('assets/images/t10.jpg', 'Dubai'),
    const Item('assets/images/t11.jpg', 'Lisbon'),
  ];

  List<Item> peopleList = <Item>[
    const Item('assets/images/p1.jpg', 'Mat Hardy'),
    const Item('assets/images/p2.jpg', 'Sia Lisbon'),
    const Item('assets/images/p3.jpg', 'Marron 5'),
    const Item('assets/images/p1.jpg', 'Ed Shareen'),
    const Item('assets/images/p2.jpg', 'Ormoc'),
    const Item('assets/images/p3.jpg', 'Rea Mae'),
  ];

  List<Item> carouselList = <Item>[
    const Item('assets/images/t2.jpg', 'Disneyland Paris'),
    const Item('assets/images/t3.jpg', 'Cruise on the seines'),
    const Item('assets/images/t4.jpg', 'Palace of Versailles'),
    const Item('assets/images/t5.jpg', 'Rio de janero'),
    const Item('assets/images/t6.jpg', 'Wanga thinuke'),
    const Item('assets/images/t7.jpg', 'Timeline City'),
    const Item('assets/images/t8.jpg', 'Code tech vanila'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer:  NavBar(),
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  Search()));
                },
                icon: const Icon(Icons.search)),
          ],
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black54),
          elevation: 0,
          centerTitle: true,
          title: const Text('TOURS',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PostScreen()));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  colorTitle('Popular Ddestination'),
                  greyTextSmall('10 Tours Available'),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: cityList.map((e) {
                  return _buildTrip(context, e);
                }).toList(),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 130,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/t10.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 40),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 180,
                      viewportFraction: 0.8,
                      onPageChanged: (index, reason) {
                        setState(() {
                          current = index;
                        });
                      },
                      // autoPlay: true,
                    ),
                    items: carouselList
                        .map((e) => Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 0),
                                        blurRadius: 10,
                                        color: Colors.black12,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        greyTextSmall('Holidays'),
                                        const SizedBox(height: 10),
                                        blackHeadingSmall(
                                            'Say yes iconic snow Catamount, Hillsdale, New York!'),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            greyTextSmall(
                                                'Book your holiday package today'),
                                            const CircleAvatar(
                                              backgroundColor: appColor,
                                              child: Icon(
                                                Icons.arrow_forward,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ]),
                                ),
                                const SizedBox(height: 16),
                              ],
                            )))
                        .toList(),
                    carouselController: _controller,
                  ),
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PostScreen()));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: colorTitle('Discover New Places'),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: cityList.map((e) {
                  return _buildNewPlace(context, e);
                }).toList(),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: colorTitle('Our Latest Blog Category'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: cityList.map((e) {
                  return _buildBlogs(context, e);
                }).toList(),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: colorTitle('People Also Search'),
          ),
          Builder(builder: (context) {
            return _buildSearch();
          }),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: colorTitle('What Peoples Say'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: peopleList.map((e) {
                  return _buildPeople(context, e);
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrip(context, e) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Location()));
      },
      child: Container(
          margin: const EdgeInsets.only(top: 16, bottom: 16, right: 16),
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, 2),
                  blurRadius: 12,
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                e.img,
                width: 100,
                height: 70,
                fit: BoxFit.cover,
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: blackText(e.name))
            ],
          )),
    );
  }

  Widget _buildNewPlace(context, e) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) =>  PostScreen()));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 16, bottom: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 6),
              height: 180,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                image: DecorationImage(
                    image: AssetImage(e.img), fit: BoxFit.cover),
              ),
              child: Stack(
                children: const [
                  Positioned(
                      bottom: 8,
                      left: 8,
                      child: Text(
                        'effile',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'medium'),
                      ))
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                Row(children: const [
                  Icon(Icons.star, color: Colors.orange, size: 14),
                  Icon(Icons.star, color: Colors.orange, size: 14),
                  Icon(Icons.star, color: Colors.orange, size: 14),
                  Icon(Icons.star, color: Colors.orange, size: 14),
                  Icon(Icons.star, color: Colors.orange, size: 14)
                ]),
                const SizedBox(height: 4),
                appcolorText('4.6 (453 Reviews)'),
                blackText(e.name),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBlogs(context, e) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(top: 16, bottom: 16, right: 16),
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 12,
                color: Color.fromRGBO(0, 0, 0, 0.16),
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 260,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                image: DecorationImage(
                    image: AssetImage(e.img), fit: BoxFit.cover),
              ),
              child: Stack(
                children: const [
                  Positioned(
                      bottom: 8,
                      right: 8,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 16,
                        child:
                            Icon(Icons.favorite, color: Colors.white, size: 20),
                      ))
                ],
              ),
            ),
            Container(
              width: 260,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  blackHeadingSmall('Byron Bay'),
                  Row(
                    children: [
                      blackText('Dubai'),
                      const SizedBox(width: 40),
                      blackText('20 July, 2023'),
                    ],
                  ),
                  const Divider(color: backgroundColor, thickness: 1),
                  blackText(
                      'A popular tourst destination, its characterized by its many beaches and hinteralnd'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearch() {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.only(right: 8),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              image: DecorationImage(
                  image: AssetImage('assets/images/t1.jpg'), fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: blackHeadingSmall('The heritage of India')),
                    greyText('India')
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Row(children: const [
                      Icon(Icons.star, color: Colors.orange, size: 14),
                      Icon(Icons.star, color: Colors.orange, size: 14),
                      Icon(Icons.star, color: Colors.orange, size: 14),
                      Icon(Icons.star, color: Colors.orange, size: 14),
                      Icon(Icons.star, color: Colors.grey, size: 14)
                    ]),
                    const SizedBox(width: 24),
                    orangeText('4.6 (453 Reviews)'),
                  ],
                ),
                const SizedBox(height: 4),
                appcolorText('Show More')
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPeople(context, e) {
    return Container(
      width: 120,
      padding: const EdgeInsets.only(top: 16, bottom: 16, right: 10),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(e.img),
            radius: 36,
          ),
          const SizedBox(height: 8),
          blackText(e.name),
          const SizedBox(height: 8),
          const Text(
            'Set tortor ante, this non crisus id, porta imperdiet',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black54, fontSize: 12),
          )
        ],
      ),
    );
  }
}

class Item {
  const Item(this.img, this.name);
  final String img;
  final String name;
}
