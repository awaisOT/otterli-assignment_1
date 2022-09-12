import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otterli/screens/create_account_screen.dart';
import 'package:otterli/screens/feedback_screen.dart';
import 'package:otterli/widgets/passwordField.dart';

import 'datepicker_form.dart';

class TextFields extends StatefulWidget {
  bool check_obsecure;
  int date;
  final String fieldName;
  TextFields(this.fieldName, this.check_obsecure, this.date);

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //CreateAccountScreen(formkey);

    return widget.date == 1
        ? DatepickerForm(widget.fieldName)
        : widget.check_obsecure == true
            ? PasswordFields(
                widget.fieldName,
                widget.check_obsecure,
              )
            : Column(
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
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
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
