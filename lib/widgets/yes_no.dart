import 'package:flutter/material.dart';
import 'dart:io';

class YesNo extends StatefulWidget {
  @override
  State<YesNo> createState() => _YesNoState();
}

bool _value = false;

class _YesNoState extends State<YesNo> {
  final File1 = Image.asset('images/no_yes.png');

  final File2 = Image.asset('images/yes_no.png');

  @override
  Widget build(BuildContext context) {
    var f = File1;
    return InkWell(
      onTap: () async {
        setState(() {
          _value = !_value;
        });
        //widget.value = false;
      },
      child: Container(
        height: 38,
        width: 98,
        child: _value == false ? f : File2,
      ),
    );
  }
}
