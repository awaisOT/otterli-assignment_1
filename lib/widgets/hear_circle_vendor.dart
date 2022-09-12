import 'package:flutter/material.dart';

class HearCircleVendor extends StatefulWidget {
  const HearCircleVendor({Key? key}) : super(key: key);

  @override
  _HearCircleVendorState createState() => _HearCircleVendorState();
}

bool _value = false;

class _HearCircleVendorState extends State<HearCircleVendor> {
  final File1 = const Icon(
    Icons.favorite,
    color: Colors.red,
  );
  final File2 = const Icon(
    Icons.favorite_border,
    color: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: const BorderRadius.all(Radius.circular(100))),
      child: IconButton(
        onPressed: (() async {
          setState(() {
            _value = !_value;
          });
        }),
        icon: _value == false ? File1 : File2,
      ),
    );
  }
}
