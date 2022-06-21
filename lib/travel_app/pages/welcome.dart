/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Outing Trip Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../components/styles.dart';
import '../widget/text_btn.dart';
import 'login.dart';

class Welcome extends StatefulWidget {
  static const String id = 'Welcome';

  const Welcome({Key key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  List<Item> imgList = <Item>[
    const Item('assets/images/s1.png', 'Plan Your Trip',
        'Plan your trip, choose your destination. Pick the best place for you holiday.'),
    const Item('assets/images/s2.png', 'Select The Date',
        'Select the day, book your ticket. We give you the best price. We guarantied!'),
    const Item('assets/images/s3.png', 'Enjoy Your Trip',
        'Enjoy your holiday! dont forget to take a photo and share to the world'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _itemCarausl(),
        ],
      ),
    );
  }

  Widget _itemCarausl() {
    return Builder(
      builder: (context) {
        return Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * .9,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
                // autoPlay: true,
              ),
              items: imgList
                  .map((e) => Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          logoImg(),
                          const SizedBox(height: 60),
                          Image.asset(
                            e.img,
                            fit: BoxFit.fitHeight,
                            width: MediaQuery.of(context).size.width * 8,
                            height: MediaQuery.of(context).size.width * .8,
                          ),
                          const SizedBox(height: 32),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 80),
                            child: centerHeading(e.detail),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 80),
                            child: centerText(e.text),
                          ),
                        ],
                      )))
                  .toList(),
              carouselController: _controller,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyTextButton(
                    onPressed: () {}, text: 'SKIP', colors: Colors.black54),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                        _current == entry.key ? 0.4 : 0.2)),
                      ),
                    );
                  }).toList(),
                ),
                MyTextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    text: 'NEXT',
                    colors: appColor)
              ],
            )
          ],
        );
      },
    );
  }

  logoImg() {
    return Image.asset(
      'assets/images/logo.png',
      width: 100,
      height: 80,
    );
  }
}

class Item {
  const Item(
    this.img,
    this.detail,
    this.text,
  );
  final String img;
  final String detail;
  final String text;
}
