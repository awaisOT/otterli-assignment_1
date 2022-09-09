import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/age_fvrtType.dart';
import '../widgets/range_slider.dart';
import '../widgets/yes_no.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 80,
        ),
        Text(
          'How have you found the app?',
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 25),
        Container(
          width: 324,
          child: Text(
            'Have you used this app for your grocery shopping?',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Align(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: YesNo(),
          ),
          alignment: Alignment.topLeft,
        ),
        Container(
          width: 324,
          child: Text(
            'Have you found any great plant based products?',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: YesNo(),
          ),
        ),
        Container(
          width: 324,
          child: Text(
            'How happy are you with the range of products available?',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        RangeSliderr(),
        SizedBox(
          height: 20,
        ),
        AgeFvrtType(),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60))),
          child: Text(
            'Create',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'Skip for now',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
                decoration: TextDecoration.underline,
              ),
            ))
      ],
    );
  }
}
