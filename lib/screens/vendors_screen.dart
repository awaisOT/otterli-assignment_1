import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/lower_half_vendor.dart';
import '../widgets/upper_half_vendor.dart';

class VendorsScreen extends StatelessWidget {
  const VendorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        UpperHalfVendor(),
        LowerHalfVendor(),
      ],
    );
  }
}
