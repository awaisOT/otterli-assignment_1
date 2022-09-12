import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otterli/screens/create_account_screen.dart';
import 'package:otterli/screens/feedback_screen.dart';
import 'package:otterli/screens/vendors_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xff00A651),
      statusBarBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CreateAccountScreen(),
      //home: FeedbackScreen(),
      //home: VendorsScreen(),
    );
  }
}
