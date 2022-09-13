import 'package:flutter/material.dart';
import 'dart:io';

class YesNo extends StatefulWidget {
  bool value;
  YesNo(@required this.value);
  @override
  State<YesNo> createState() => _YesNoState();
}

class _YesNoState extends State<YesNo> {
  final File1 = Image.asset('images/no_yes.png');

  final File2 = Image.asset('images/yes_no.png');

  @override
  Widget build(BuildContext context) {
    //var f = File1;
    return InkWell(
      onTap: () async {
        setState(() {
          widget.value = !widget.value;
        });
        //widget.value = false;
      },
      child: SizedBox(
        height: 38,
        width: 98,
        child: widget.value == false ? File1 : File2,
      ),
    );
  }
}
