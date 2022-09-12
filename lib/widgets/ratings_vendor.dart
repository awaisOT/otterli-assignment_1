import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingsVendor extends StatelessWidget {
  const RatingsVendor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                const Icon(
                  Icons.star_half,
                  size: 20,
                  color: Color(0xffF3D434),
                ),
                Text(
                  '4.8  Rating',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  '200 reviews ',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ))
              ],
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text(
              'Give your rating',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.star_border,
                  size: 20,
                  color: Color(0xffF3D434),
                ),
                Icon(
                  Icons.star_border,
                  size: 20,
                  color: Color(0xffF3D434),
                ),
                Icon(
                  Icons.star_border,
                  size: 20,
                  color: Color(0xffF3D434),
                ),
                Icon(
                  Icons.star_border,
                  size: 20,
                  color: Color(0xffF3D434),
                ),
                Icon(
                  Icons.star_border,
                  size: 20,
                  color: Color(0xffF3D434),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
