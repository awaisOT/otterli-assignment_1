import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otterli/widgets/terms_text.dart';
import 'package:otterli/widgets/text_fields.dart';
import '../widgets/check_box.dart';
import '../widgets/datepicker_form.dart';

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            width: 229,
            height: 45,
            child: Text(
              'Create an account',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: (() {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  //height: 200,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Select Option',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0,
                                alignment: Alignment.topLeft,
                              ),
                              child: const Text(
                                'Camera',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.green),
                              ),
                              onPressed: () => null,
                            ),
                          ),
                          TextButton(
                            child: const Text(
                              'Gallery',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.green),
                            ),
                            onPressed: () => null,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          }),
          child: Container(
            margin: const EdgeInsets.all(5),
            width: double.infinity,
            child: CircleAvatar(
              backgroundColor: Colors.grey[200],
              maxRadius: 40,
              child: const Icon(
                Icons.image,
                color: Colors.grey,
                size: 50,
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            width: 229,
            height: 45,
            child: Text(
              'Create an account',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        TextFields('UserName', false),
        TextFields('Email', false),
        DatepickerForm('Date'),
        TextFields('Password', true),
        TextFields('Confirm Password', true),
        Row(
          children: const <Widget>[
            CheckBox(),
            TermsText(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60))),
                child: Text(
                  'Cancel',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.green,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60))),
                child: Text(
                  'Create',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    //color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
