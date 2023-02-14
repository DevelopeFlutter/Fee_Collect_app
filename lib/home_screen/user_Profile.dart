import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/Theme/aap_Colors.dart';
import 'package:new_project/json_data/json_File.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(
                mediaQuery.size.height / 11), // here the desired height
            child: AppBar(
              elevation: 0,
              backgroundColor: appcolors.greenishText,
              title: Text(
                "Profile",
                style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              leading: GestureDetector(
                onTap:(){
                  Get.back();
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            )),
        body: Column(children: [
          Container(
            color: Colors.grey.withOpacity(0.4),
            height: mediaQuery.size.height / 8,
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.16,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          child: CircleAvatar(
                            radius: 30,
                            child: Image.asset('assets/images/C2.png'),
                          ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 40),
                    child: Column(
                      children: [
                        Text(
                          "Student Name",
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Class1-A',
                          style: GoogleFonts.montserrat(fontSize: 14),
                        ),
                        Text(
                          'Roll No.........',
                          style: GoogleFonts.montserrat(fontSize: 14),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: mediaQuery.size.height / 10,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                topLeft: Radius.circular(40.0),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: mediaQuery.size.height / 85,
                ),
                 TabBar(indicatorColor: appcolors.greyText, tabs: [
                  Tab(
                      child: Text(
                    "Gernale",
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  )),
                  Tab(
                      child: Text(
                    "Parents",
                    style:GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  )),
                  Tab(
                      child: Text(
                    "Other",
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  ))
                ]),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                         Text('Admission Date',
                            style:GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: mediaQuery.size.height / 25,
                        ),
                         Text('Date of Birth',
                            style:GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: mediaQuery.size.height / 25,
                        ),
                         Text('Mobile Number',
                            style: GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: mediaQuery.size.height / 25,
                        ),
                         Text('Email',
                            style:GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: mediaQuery.size.height / 25,
                        ),
                         Text('Current Address',
                            style:GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                         Text('05-12-2022',
                            style:GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: mediaQuery.size.height / 25,
                        ),
                         Text('05-3-1999',
                            style:GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: mediaQuery.size.height / 25,
                        ),
                         Text('+1234312*****',
                            style:GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: mediaQuery.size.height / 25,
                        ),
                         Text('abc@gmail.com',
                            style:GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: mediaQuery.size.height / 25,
                        ),
                         Text('43864 USA',
                            style:GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.16,
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            child: CircleAvatar(
                              radius: 36,
                              child: Image.asset('assets/images/C5.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 27,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.person),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Parent',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: mediaQuery.size.height / 40,
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.phone),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      '+192343******',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.size.height / 30,
                  ),
                  const Divider(
                    thickness: 2.5,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.16,
                              child: Container(
                                margin: const EdgeInsets.all(8),
                                child: CircleAvatar(
                                  radius: 36,
                                  child: Image.asset('assets/images/C3.png'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 27,
                                left: 30,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.ideographic,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.person),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Parent',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: mediaQuery.size.height / 40,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.phone),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text(
                                          '+12343******',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mediaQuery.size.height / 20,
                  ),
                  const Divider(
                    thickness: 2.5,
                  ),
                  Center(
                    child: Container(
              color: Colors.white,
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
