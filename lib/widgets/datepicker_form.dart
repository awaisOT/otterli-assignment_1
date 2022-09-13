import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DatepickerForm extends StatefulWidget {
  final String fieldName;
  DatepickerForm(this.fieldName);

  @override
  _DatepickerFormState createState() => _DatepickerFormState();
}

class _DatepickerFormState extends State<DatepickerForm> {
  TextEditingController date = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
            keyboardType: TextInputType.none,
            readOnly: true,
            controller: date,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left: 28),
              suffixIcon: const Icon(Icons.arrow_drop_down_sharp),
              suffixIconColor: Colors.black,
              hintText: '     Select Date',
              hintStyle: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            ),
            onTap: () async {
              DateTime? pickeddate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1950),
                  lastDate: DateTime.now());

              if (pickeddate != null) {
                setState(() {
                  date.text = DateFormat('MM/dd/y').format(pickeddate);
                });
              }
            },
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
