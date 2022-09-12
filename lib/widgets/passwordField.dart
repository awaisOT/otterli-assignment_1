import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otterli/screens/create_account_screen.dart';
import 'package:otterli/screens/feedback_screen.dart';

import 'datepicker_form.dart';

class PasswordFields extends StatefulWidget {
  bool check_obsecure;
  final String fieldName;
  PasswordFields(this.fieldName, this.check_obsecure);

  @override
  State<PasswordFields> createState() => _PasswordFieldsState();
}

class _PasswordFieldsState extends State<PasswordFields> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //CreateAccountScreen(formkey);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            widget.fieldName,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 11),
          child: TextFormField(
            textInputAction: TextInputAction.next,
            obscureText: widget.check_obsecure,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 28),
              hintText: 'Enter ${widget.fieldName}',
              hintStyle: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              suffixIcon: IconButton(
                icon: Icon(
                  widget.check_obsecure
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    widget.check_obsecure = !widget.check_obsecure;
                  });
                },
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
