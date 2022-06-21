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
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'booking.dart';
import '../widget/elevated_button.dart';

class ChooseDate extends StatefulWidget {
  static const String id = 'ChooseDate';

  const ChooseDate({Key key}) : super(key: key);

  @override
  _ChooseDateState createState() => _ChooseDateState();
}

class _ChooseDateState extends State<ChooseDate> {
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {}

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black54),
          elevation: 0,
          centerTitle: true,
          title: const Text('Choose Dates',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 40),
            SfDateRangePicker(
              view: DateRangePickerView.month,
              selectionColor: appColor,
              rangeSelectionColor: appColor3,
              endRangeSelectionColor: appColor,
              startRangeSelectionColor: appColor,
              todayHighlightColor: appColor,
              monthViewSettings:
                  const DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
              onSelectionChanged: _onSelectionChanged,
              selectionMode: DateRangePickerSelectionMode.range,
            ),
            const SizedBox(height: 16),
            blackHeading('16 January - 20 January'),
            const SizedBox(height: 8),
            blackText('5 Days(4 Nights)'),
            const SizedBox(height: 16),
            MyElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  Booking()));
                },
                text: 'Done',
                colors: appColor,
                height: 42,
                width: double.infinity),
          ],
        ));
  }
}
