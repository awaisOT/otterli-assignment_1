import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool? checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Transform.scale(
            scale: 1.0,
            child: Checkbox(
                value: checkBoxValue,
                activeColor: Color(0xff07AD5A),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                onChanged: (bool? newValue) {
                  setState(() {
                    checkBoxValue = newValue;
                  });
                  const Text('Remember me');
                }),
          ),
        ],
      ),
    );
  }
}
