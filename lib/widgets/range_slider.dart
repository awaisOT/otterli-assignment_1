import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class RangeSliderr extends StatefulWidget {
  const RangeSliderr({Key? key}) : super(key: key);

  @override
  _RangeSliderrState createState() => _RangeSliderrState();
}

class _RangeSliderrState extends State<RangeSliderr> {
  double currentvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      child: Column(
        children: [
          Slider(
              activeColor: Colors.green,
              thumbColor: Colors.green,
              inactiveColor: Colors.green[100],
              divisions: 2,
              max: 10,
              value: currentvalue,
              onChanged: (value) {
                setState(() {
                  currentvalue = value;
                });
              }),
          Container(
            width: 290,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text('1'),
                Text('5'),
                Text('10'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
