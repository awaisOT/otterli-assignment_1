import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpperHalfVendor extends StatelessWidget {
  const UpperHalfVendor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: Row(
            children: <Widget>[
              const Icon(Icons.arrow_back_ios),
              Text(
                'Back to results',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 262,
          width: 22898,
          child: Image.asset(
            'images/test.png',
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 100.0, bottom: 0),
            child: IconButton(
              onPressed: (() {}),
              icon: const Icon(
                Icons.info,
                size: 14,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
