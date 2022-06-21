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
import '../widget/text_btn.dart';

class Filter extends StatefulWidget {
  static const String id = 'Filter';

  const Filter({Key key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  RangeValues distance = const RangeValues(40, 80);
  RangeValues age = const RangeValues(40, 80);
  String dropdownValueCountry = 'India';
  String dropdownValueCity = 'Mumbai';

  bool _isChecked = true;
  // ignore: unused_field
  String _currText = '';

  List<String> text = ['Ral', 'Classic', 'Yolo'];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black54),
        elevation: 0,
        centerTitle: true,
        title: const Text('Filters',
            style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        actions: [
          MyTextButton(onPressed: () {}, text: 'Done', colors: appColor)
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            blackHeading('Location'),
            Row(
              children: [
                Expanded(
                    child: DropdownButton<String>(
                  value: dropdownValueCountry,
                  icon: const Icon(Icons.arrow_drop_down),
                  style: const TextStyle(color: Colors.black87),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValueCountry = newValue;
                    });
                  },
                  items: <String>['India', 'USA', 'France']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )),
                const SizedBox(width: 20),
                Expanded(
                    child: DropdownButton<String>(
                  value: dropdownValueCity,
                  icon: const Icon(Icons.arrow_drop_down),
                  style: const TextStyle(color: Colors.black87),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValueCity = newValue;
                    });
                  },
                  items: <String>['Mumbai', 'Delhi', 'Gujarat']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ))
              ],
            ),
            const SizedBox(height: 20),
            blackHeading('Price Range'),
            RangeSlider(
              values: distance,
              min: 0,
              max: 100,
              divisions: 10,
              activeColor: appColor,
              inactiveColor: Colors.grey[300],
              labels: RangeLabels(
                distance.start.round().toString(),
                distance.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  distance = values;
                });
              },
            ),
            const SizedBox(height: 20),
            blackHeading('Price Range'),
            RangeSlider(
              values: distance,
              min: 0,
              max: 100,
              divisions: 10,
              activeColor: appColor,
              inactiveColor: Colors.grey[300],
              labels: RangeLabels(
                distance.start.round().toString(),
                distance.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  distance = values;
                });
              },
            ),
            const SizedBox(height: 20),
            blackHeading('Type'),
            SizedBox(
              height: 350.0,
              child: Column(
                children: text
                    .map((t) => CheckboxListTile(
                          activeColor: appColor,
                          value: _isChecked,
                          title: Text(t),
                          onChanged: (val) {
                            setState(() {
                              _isChecked = val;
                              if (val == true) {
                                _currText = t;
                              }
                            });
                          },
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
