import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  final VoidCallback func;
  CheckBox(this.func);

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool? checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Transform.scale(
          scale: 1.0,
          child: Checkbox(
            value: checkBoxValue,
            activeColor: const Color(0xff07AD5A),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            onChanged: (bool? newValue) {
              setState(() {
                checkBoxValue = newValue;
                func(checkBoxValue) {
                  print(checkBoxValue);
                }
              });
              const Text('Remember me');
            },
          ),
        ),
      ],
    );
  }
}
