import 'package:flutter/material.dart';

class HearCircleVendor extends StatefulWidget {
  const HearCircleVendor({Key? key}) : super(key: key);

  @override
  _HearCircleVendorState createState() => _HearCircleVendorState();
}

bool _value = false;

class _HearCircleVendorState extends State<HearCircleVendor> {
  final File1 = Image.asset('images/heart_empty.png');

  final File2 = Image.asset('images/heart_filled.png');
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: const BorderRadius.all(Radius.circular(100))),
      child: InkWell(
        onTap: (() async {
          setState(() {
            _value = !_value;
          });
        }),
        child: _value == false ? File1 : File2,
      ),
    );
  }
}
