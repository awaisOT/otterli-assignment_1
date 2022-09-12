import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonsVendor extends StatelessWidget {
  const ButtonsVendor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 56,
            width: 170,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff00A651),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60))),
              child: Text(
                'Marks & Spencer',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  //color: Colors.green,
                ),
              ),
            ),
          ),
          Container(
            height: 56,
            width: 170,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff00A651),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60))),
              child: Text(
                'Sainsbury’s',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  //color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
