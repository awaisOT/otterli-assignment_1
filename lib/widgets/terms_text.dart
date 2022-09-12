import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsText extends StatelessWidget {
  const TermsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      height: 40,
      child: RichText(
        text: TextSpan(
          text: 'By creating an account you accept the ',
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                ),
                text: ' Privacy Policy',
                recognizer: TapGestureRecognizer()
                  ..onTap = () => print('click')),
            TextSpan(
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                ),
                text: ' Teams of Use',
                recognizer: TapGestureRecognizer()
                  ..onTap = () => print('click')),
          ],
        ),
      ),
    );
  }
}
