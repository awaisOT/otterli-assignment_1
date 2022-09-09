import 'package:flutter/material.dart';

class AgeFvrtType extends StatelessWidget {
  const AgeFvrtType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Text('Age'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Text('Lifestyle Diet'),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 94,
                height: 48,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: (const BorderSide(color: Colors.green)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: 223,
                  height: 48,
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration.collapsed(
                      hintText: '',
                    ),
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ))
            ],
          ),
        )
      ],
    );
  }
}
