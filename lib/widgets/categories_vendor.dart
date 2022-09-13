import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesVendor extends StatelessWidget {
  final String txt;
  const CategoriesVendor(this.txt, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff00A651)),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Text(
            txt,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: const Color(0xff00A651),
            ),
          ),
        ),
      ),
    );
  }
}
