import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otterli/widgets/ratings_vendor.dart';

import 'buttons_vendor.dart';
import 'categories_vendor.dart';
import 'hear_circle_vendor.dart';

class LowerHalfVendor extends StatelessWidget {
  const LowerHalfVendor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      width: double.infinity,
      height: 533,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Veggie Wendy the Worm',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Units: 100 g ',
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffC8C8C8),
                    ),
                  ),
                ],
              ),
              const HearCircleVendor(),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            '£4.50',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color(0xff00A651),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const RatingsVendor(),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Categories',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const <Widget>[
              CategoriesVendor('Snack'),
              CategoriesVendor('Kids'),
              CategoriesVendor('Sweets'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'Product Notes ',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '(click to see more)',
                style: GoogleFonts.poppins(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const SizedBox(
            width: 367,
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ipsum...'),
          ),
          const SizedBox(
            height: 30,
          ),
          const ButtonsVendor(),
        ],
      ),
    );
  }
}
