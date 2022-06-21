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
import 'package:carousel_slider/carousel_slider.dart';
import 'booking.dart';
import '../widget/elevated_button.dart';

class PlaceDetail extends StatefulWidget {
  static const String id = 'PlaceDetail';

  const PlaceDetail({Key key}) : super(key: key);

  @override
  _PlaceDetailState createState() => _PlaceDetailState();
}

class _PlaceDetailState extends State<PlaceDetail>
    with SingleTickerProviderStateMixin {
  int current = 0;
  int tabID = 1;

  final CarouselController _controller = CarouselController();

  List<Item> imgList = <Item>[
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
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black54),
        elevation: 0,
        centerTitle: true,
        title: const Text('Paris',
            style: TextStyle(color: Colors.black, fontFamily: 'medium')),
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
        child: Column(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(0)),
                image: DecorationImage(
                    image: AssetImage('assets/images/t10.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Center(
                  child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: const Text(
                  'Top 10 Favourite Destination In Paris',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'bold', fontSize: 28, color: Colors.white),
                ),
              )),
            ),
            Column(
              children: [
                const SizedBox(height: 126),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 180,
                    viewportFraction: 0.50,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        current = index;
                      });
                    },
                    // autoPlay: true,
                  ),
                  items: imgList
                      .map((e) => Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 140,
                                height: 140,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(0, 0),
                                      blurRadius: 10,
                                      color: appColor3,
                                    )
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage(e.img),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              const SizedBox(height: 16),
                              // centerHeading(e.name),
                            ],
                          )))
                      .toList(),
                  carouselController: _controller,
                ),
              ],
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: SizedBox(
                  child: Text(
                    'Disneyland Paris',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontFamily: 'bold'),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              blackHeadingSmall('Departure'),
              greyText('23rd Jan 2023'),
              const SizedBox(height: 16),
              blackHeadingSmall('Duration'),
              greyText('5 Days / 4 Nights'),
              const SizedBox(height: 16),
              blackHeadingSmall(
                  'Discover 7 World Heritage Sites in this toor.'),
              greyText(
                  'Fans of Mickey can visit Disneyland Paris which is located 32 km from central Paris, with connection to the suburban. \n Disneyland Paris has two theme parks. Disneyland (with sleeping beautys castle) and walt Disney studios top attrations'),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    ));
  }

  Widget _buildBottomBar() {
    return Container(
        height: 120,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 16, top: 6),
              child: _buildFilter(),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          blackHeadingSmall('\$2012'),
                          const SizedBox(width: 8),
                          blackText('per person')
                        ],
                      ),
                      Row(
                        children: [
                          Row(children: const [
                            Icon(Icons.star, color: Colors.orange, size: 14),
                            Icon(Icons.star, color: Colors.orange, size: 14),
                            Icon(Icons.star, color: Colors.orange, size: 14),
                            Icon(Icons.star, color: Colors.orange, size: 14),
                            Icon(Icons.star, color: Colors.grey, size: 14)
                          ]),
                          const SizedBox(width: 8),
                          orangeText('4.6 (453 Reviews)'),
                        ],
                      ),
                    ],
                  ),
                ),
                MyElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  Booking()));
                    },
                    text: 'Book Now',
                    colors: appColor,
                    height: 42,
                    width: 140)
              ],
            )
          ],
        ));
  }

  Widget _buildFilter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              tabID = 1;
            });
          },
          child: Text('Overview', style: segmentText(1)),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              tabID = 2;
            });
          },
          child: Text('Places', style: segmentText(2)),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              tabID = 3;
            });
          },
          child: Text('Itinerary', style: segmentText(3)),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              tabID = 4;
            });
          },
          child: Text('Review', style: segmentText(4)),
        ),
      ],
    );
  }

  segmentText(val) {
    return TextStyle(
        color: tabID == val ? appColor : Colors.black54,
        fontSize: 16,
        fontFamily: 'bold');
  }
}

class Item {
  const Item(this.img, this.name);
  final String img;
  final String name;
}
