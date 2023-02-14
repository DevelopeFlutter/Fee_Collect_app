// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Auth_Services/login_screen.dart';
import 'Theme/aap_Colors.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return const GetMaterialApp(
       debugShowCheckedModeBanner: false,
      home:SplashScreen()

    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                 Login(),
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appcolors.greenishText,
      body: Column(
        children: [
          SizedBox(
            height: mediaQuery.size.height/10,
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              // backgroundImage: AssetImage('assets/images/cat3.png'),
            ),
          ),
        ],
      )


    );
  }
}





