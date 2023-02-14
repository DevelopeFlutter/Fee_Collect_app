// ignore_for_file: camel_case_types, must_be_immutable
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:new_project/Theme/aap_Colors.dart';
import 'package:new_project/home_screen/bottom_bar.dart';

// ignore_for_file: camel_case_types, must_be_immutable

import 'package:google_fonts/google_fonts.dart';


class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  final formkey1 = GlobalKey<FormState>();

  void validationLogin() {
    if (formkey.currentState!.validate()) {
      Get.to(const BottomBarView());
    } else {
      null;
    }
  }

  void validationSignUp() {
    if (formkey1.currentState!.validate()) {
    } else {
      null;
    }
  }

  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: appcolors.greenishText,
          body: Padding(
            padding: const EdgeInsets.only(top: 72),
            child: Container(
              height: mediaQuery.size.height / 1,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.0),
                      border: const Border(
                          bottom: BorderSide(color: Colors.grey, width: 2))),
                  child: TabBar(indicatorColor: appcolors.greyText, tabs: [
                    Tab(
                        child: Text(
                          "Login",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        )),
                    Tab(
                        child: Text(
                          "Register",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        )),
                  ]),
                ),
                Expanded(
                  child: TabBarView(children: [
                    Column(children: [
                      SizedBox(
                        height: mediaQuery.size.height / 15,
                      ),
                      Form(
                          key: formkey,
                          child: Column(
                            children: [
                              textFormField(
                                labelText: 'Username or Email',
                                hintText: 'Enter Username or Email',
                              ),
                              SizedBox(
                                height: mediaQuery.size.height / 22,
                              ),
                              textFormField(
                                labelText: 'Password',
                                hintText: 'Enter Password',
                              ),
                            ],
                          )),
                      SizedBox(
                        height: mediaQuery.size.height / 65,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Forgot Password?",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: appcolors.lightPrimarycolor),
                            )),
                      ),
                      SizedBox(
                        height: mediaQuery.size.height / 25,
                      ),
                      SizedBox(
                        height: mediaQuery.size.height / 15,
                        width: mediaQuery.size.width * 0.9,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: appcolors.greenishText,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            onPressed: () {
                              validationLogin();
                            },
                            child: Text('Sign in',
                                style: GoogleFonts.montserrat(
                                    fontSize: 20, color: Colors.white))),
                      ),
                      SizedBox(
                        height: mediaQuery.size.height / 3.7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: appcolors.greenishText),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "Register",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue),
                            ),
                          )
                        ],
                      ),
                    ]),
                    Column(children: [
                      SizedBox(
                        height: mediaQuery.size.height / 70,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: [
                              Text(
                                "Register First",
                                style: GoogleFonts.montserrat(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800,
                                    color: appcolors.greenishText),
                              ),
                              SizedBox(
                                height: mediaQuery.size.height / 150,
                              ),
                              Text(
                                "Register to continue",
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: appcolors.greyText),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Form(
                        key: formkey1,
                        child: Column(
                          children: [
                            SizedBox(
                              height: mediaQuery.size.height / 15,
                            ),
                            textFormField(
                              labelText: 'Username',
                              hintText: 'Enter Username',
                            ),
                            SizedBox(
                              height: mediaQuery.size.height / 30,
                            ),
                            textFormField(
                              labelText: 'Email',
                              hintText: 'Enter Email',
                            ),
                            SizedBox(
                              height: mediaQuery.size.height / 30,
                            ),
                            textFormField(
                              labelText: 'Password',
                              hintText: 'Enter Password',
                            ),
                            SizedBox(
                              height: mediaQuery.size.height / 12,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.size.height / 15,
                        width: mediaQuery.size.width * 0.9,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: appcolors.greenishText,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            onPressed: () {
                              validationSignUp();
                            },
                            child: Text('Register',
                                style: GoogleFonts.montserrat(
                                    fontSize: 20, color: Colors.white))),
                      ),
                      SizedBox(
                        height: mediaQuery.size.height / 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: appcolors.greenishText),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "Sign in?",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ]),
                ),
              ]),
            ),
          ),
        ));
  }
}

class textFormField extends StatelessWidget {
  textFormField({required this.labelText, required this.hintText, Key? key})
      : super(key: key);
  String? labelText;
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: TextFormField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide:
              const BorderSide(color: appcolors.greenishText, width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide:
              const BorderSide(color: appcolors.greenishText, width: 2.0),
            ),
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
            // filled: true,
            hintStyle: TextStyle(color: Colors.grey[800]),
            hintText: hintText,
            labelText: labelText,
            labelStyle: const TextStyle(
                fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black),
            fillColor: Colors.white70),
      ),
    );
  }
}


class CustomTextField extends StatelessWidget {
  CustomTextField({required this.labelText, required this.hintText, Key? key})
      : super(key: key);
  String? labelText;
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: TextFormField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide:
                  const BorderSide(color: appcolors.greenishText, width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide:
                  const BorderSide(color: appcolors.greenishText, width: 2.0),
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
            // filled: true,
            hintStyle: TextStyle(color: Colors.grey[800]),
            hintText: hintText,
            labelText: labelText,
            labelStyle: const TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black),
            fillColor: Colors.white70),
      ),
    );
  }
}
