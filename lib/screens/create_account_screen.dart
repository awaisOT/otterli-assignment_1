import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:otterli/widgets/terms_text.dart';
import 'package:otterli/widgets/text_fields.dart';
import '../widgets/check_box.dart';
import '../widgets/datepicker_form.dart';

class CreateAccountScreen extends StatefulWidget {
  final Formkey = GlobalKey<FormState>();

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

final Formkey = GlobalKey<FormState>();

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  File? imageCaptured;
  Future<void> _addImage() async {
    final ImagePicker picker = ImagePicker();
    XFile? photo = await picker.pickImage(
      source: ImageSource.camera,
    );
    final tempimage = File(photo!.path);
    setState(() {
      imageCaptured = tempimage;
    });
  }

  Future<void> _addImageG() async {
    final ImagePicker picker = ImagePicker();
    XFile? photo = await picker.pickImage(
      source: ImageSource.gallery,
    );
    final tempimage = File(photo!.path);
    setState(() {
      imageCaptured = tempimage;
    });
  }

  //CreateAccountScreen(this.formkey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/Top_Nav.png'),
              const SizedBox(
                height: 17,
              ),
              Container(
                padding: EdgeInsets.only(left: 109, right: 90),
                //alignment: Alignment.center,
                height: 45,
                child: Text(
                  'Create an account',
                  style: GoogleFonts.poppins(
                    shadows: [
                      Shadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(1, 1),
                          blurRadius: 10),
                    ],
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
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
                                          fontSize: 17,
                                          color: Color(0xff00A651)),
                                    ),
                                    onPressed: () => _addImage(),
                                  ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      elevation: 0,
                                      alignment: Alignment.topLeft,
                                    ),
                                    child: const Text(
                                      'Gallery',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xff00A651)),
                                    ),
                                    onPressed: () => _addImageG(),
                                  ),
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
                  margin: const EdgeInsets.all(7),
                  width: double.infinity,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    maxRadius: 40,
                    child: const Icon(
                      Icons.image,
                      color: Color.fromARGB(255, 185, 185, 185),
                      size: 50,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 140,
                ),
                //width: 24,
                height: 45,
                child: Text(
                  'Select an avatar',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Form(
                key: Formkey,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 38, right: 50, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextFields('UserName', false, 0),
                      TextFields('Email', false, 0),
                      TextFields('Date', false, 1),
                      TextFields('Password', true, 0),
                      TextFields('Confirm Password', true, 0),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, bottom: 33, top: 27),
                child: Row(
                  children: const <Widget>[
                    CheckBox(),
                    TermsText(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 74),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 159,
                      height: 62,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            side: const BorderSide(
                              width: 1.0,
                              color: Colors.green,
                            ),
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60))),
                        child: Text(
                          'Cancel',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 159,
                      height: 62,
                      child: ElevatedButton(
                        onPressed: () {
                          if (Formkey.currentState!.validate()) {
                            print(Formkey);
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Account processing')),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60))),
                        child: Text(
                          'Create',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            //color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
