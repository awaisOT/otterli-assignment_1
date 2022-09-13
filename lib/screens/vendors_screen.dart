import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/lower_half_vendor.dart';
import '../widgets/upper_half_vendor.dart';

class VendorsScreen extends StatelessWidget {
  const VendorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 251, 235),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('images/Top_Nav.png'),
            const UpperHalfVendor(),
            const LowerHalfVendor(),
          ],
        ),
      ),
    );
  }
}
