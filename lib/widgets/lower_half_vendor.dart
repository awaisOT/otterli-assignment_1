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
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 238, 238, 238),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      width: double.infinity,
      height: 450,
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
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              HearCircleVendor(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '£4.50',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          RatingsVendor(),
          SizedBox(
            height: 5,
          ),
          Text(
            'Categories',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            children: <Widget>[
              CategoriesVendor('Snack'),
              CategoriesVendor('Kids'),
              CategoriesVendor('Sweets'),
            ],
          ),
          Text(
            'Product Notes (click to see more)',
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            height: 95,
            width: 350,
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ipsum...'),
          ),
          ButtonsVendor(),
        ],
      ),
    );
  }
}
