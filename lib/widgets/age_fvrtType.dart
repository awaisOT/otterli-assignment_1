import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AgeFvrtType extends StatefulWidget {
  const AgeFvrtType({Key? key}) : super(key: key);

  @override
  State<AgeFvrtType> createState() => _AgeFvrtTypeState();
}

class _AgeFvrtTypeState extends State<AgeFvrtType> {
  //TextEditingController date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Age',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: Text(
                'Lifestyle Diet',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 94,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 223,
                height: 48,
                child: Align(
                  alignment: Alignment.center,
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
                  ),
                ),
                // child: TextFormField(
                //   readOnly: true,
                //   controller: date,
                //   decoration: InputDecoration(
                //     contentPadding: EdgeInsets.only(left: 28),
                //     suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                //     suffixIconColor: Colors.black,
                //     hintText: '     Select Date',
                //     hintStyle: GoogleFonts.poppins(
                //       fontSize: 12,
                //       fontWeight: FontWeight.w300,
                //     ),
                //     border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(15)),
                //   ),
                //   onTap: () async {
                //     await DropdownMenuItem(child: Text('data'));
                //   },
                // )
              )
            ],
          ),
        )
      ],
    );
  }
}
