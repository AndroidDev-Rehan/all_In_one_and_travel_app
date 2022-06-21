/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Outing Trip Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';

import '../widget/navbar.dart';

class Language extends StatefulWidget {
  static const String id = 'Language';

  const Language({Key key}) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  List<Item> languageList = <Item>[
    const Item(Colors.red, 'English'),
    const Item(Colors.cyan, 'French'),
    const Item(Colors.orange, 'Hindi'),
    const Item(Colors.pink, 'German'),
    const Item(Colors.green, 'Spanish'),
    const Item(Colors.indigo, 'Arabic'),
    const Item(Colors.yellow, 'Italian'),
    const Item(Colors.amber, 'Japany'),
    const Item(Colors.blueGrey, 'Taglog'),
    const Item(Colors.blue, 'English'),
  ];

  List<Color> lanColor = [
    Colors.blue,
    Colors.cyan,
    Colors.orange,
    Colors.pink,
    Colors.green,
    Colors.indigo,
    Colors.yellow,
    Colors.amber,
    Colors.blueGrey,
    Colors.blue,
  ];

  List<String> lanName = [
    'English',
    'French',
    'Hindi',
    'German',
    'Spanish',
    'Arabic',
    'Japany',
    'Taglog',
    'Italian',
    'English',
  ];

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
          title: const Text('Language',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(30),
        crossAxisSpacing: 40,
        mainAxisSpacing: 40,
        crossAxisCount: 2,
        childAspectRatio: 100 / 100,
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        children: List.generate(languageList.length, (index) {
          return SizedBox(
            child: Container(
              decoration: BoxDecoration(
                color: lanColor[index],
                borderRadius: const BorderRadius.all(Radius.circular(100)),
              ),
              child: Center(
                child: Text(
                  lanName[index],
                  style: const TextStyle(
                      color: Colors.white, fontSize: 18, fontFamily: 'bold'),
                ),
              ),
            ),
          );
        }));
  }
}

class Item {
  const Item(this.color, this.name);
  final Color color;
  final String name;
}
