// ignore_for_file: non_constant_identifier_names, camel_case_types, must_be_immutable

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/Theme/aap_Colors.dart';
import 'package:new_project/home_screen/user_Profile.dart';
import 'package:new_project/json_data/json_File.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ignore_for_file: camel_case_types

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/Theme/aap_Colors.dart';
import 'package:new_project/json_data/json_File.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'fee_Collect_screen.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);
  @override
  State<Home_screen> createState() => _Home_screenState();
}

@override
var scaffoldKey = GlobalKey<ScaffoldState>();
DateTime Today = DateTime.now();
final controller = CarouselController();
final _totalDots = 4;
double _currentPosition = 0.0;

class _Home_screenState extends State<Home_screen> {
  void onDaySelected(DateTime day, DateTime FocusedDay) {
    setState(() {
      Today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      key: scaffoldKey,
      drawer: SafeArea(
        child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  width: mediaQuery.size.width * 30,
                  height: mediaQuery.size.height / 8,
                  color: appcolors.greenishText,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top: 20),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(Icons.arrow_back))),
                  ),
                ),
                Container(
                    width: mediaQuery.size.width * 30,
                    height: mediaQuery.size.height / 7,
                    color: Colors.grey.withOpacity(0.3),
                    child: Row(
                      children: [
                        Container(
                          height: mediaQuery.size.height / 10,
                          width: mediaQuery.size.width * 0.20,
                          // width: 40,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/img2.png"),
                                fit: BoxFit.fill),
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: [
                              Text(
                                "Parent",
                                style: GoogleFonts.montserrat(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: mediaQuery.size.height / 130,
                              ),
                              const Text(
                                "Child name",
                              ),
                              SizedBox(
                                height: mediaQuery.size.height / 130,
                              ),
                              const Text("Class1-A"),
                            ],
                          ),
                        )
                      ],
                    )
                ),
                ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Home",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                    ),
                  ),
                ),
                ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.circleUser,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Profile",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const CollectFee());
                  },
                  child: ListTile(
                    leading: const FaIcon(
                      Icons.description,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Fees",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const FaIcon(
                    Icons.medical_information_sharp,
                    color: Colors.black,
                  ),
                  title: Text("Time Table",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                      )),
                ),
                ListTile(
                  leading: const FaIcon(
                    Icons.work_history,
                    color: Colors.black,
                  ),
                  title: Text("Homework",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                      )),
                ),
                ListTile(
                  leading: const FaIcon(
                    Icons.save_alt_outlined,
                    color: Colors.black,
                  ),
                  title: Text("Download Center",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                      )),
                ),
                GestureDetector(
                  onTap: (){
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              insetPadding: EdgeInsets.all(0),
                              child: SingleChildScrollView(
                                child: Container(
                                  height: mediaQuery.size.height / 3.5,
                                  width: mediaQuery.size.width * 20,
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Container(
                                        color: Colors.grey.withOpacity(0.6),
                                        height: mediaQuery.size.height / 35,
                                        width: mediaQuery.size.width * 20,
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 2),
                                                child: Text(
                                                  "Child List",
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: (){
                                                  Get.back();
                                                },
                                                child: Icon(
                                                  Icons.close,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                              )
                                            ]),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: mediaQuery.size.height / 10,
                                              width: mediaQuery.size.width * 0.15,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage("assets/images/download.jpg"),
                                                    fit: BoxFit.fill),
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 0, left: 10),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                                textBaseline: TextBaseline.ideographic,
                                                children: [
                                                  Text(
                                                    "Name",
                                                    style: GoogleFonts.montserrat(
                                                        fontSize: 14, fontWeight: FontWeight.w500),
                                                  ),
                                                  const Text("Class1-A"),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.black.withOpacity(0.2),
                                        thickness: 1.5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: mediaQuery.size.height / 10,
                                              width: mediaQuery.size.width * 0.15,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage("assets/images/download.jpg"),
                                                    fit: BoxFit.fill),
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 0, left: 10),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                                textBaseline: TextBaseline.ideographic,
                                                children: [
                                                  Text(
                                                    "Name",
                                                    style: GoogleFonts.montserrat(
                                                        fontSize: 14, fontWeight: FontWeight.w500),
                                                  ),
                                                  const Text("Class1-B"),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  child: ListTile(
                    leading: const FaIcon(
                      Icons.font_download,
                      color: Colors.black,
                    ),
                    title: Text("Attendance",
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                        )),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.summarize,
                    color: Colors.black,
                  ),
                  title: Text("Report Card"),
                ),
                ListTile(
                    leading: const FaIcon(
                      Icons.mail,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Notice Board",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                      ),
                    )),
                ListTile(
                  leading: const FaIcon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Timeline',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            )),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              SizedBox(
                height: mediaQuery.size.height / 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (scaffoldKey.currentState!.isDrawerOpen) {
                          scaffoldKey.currentState!.closeDrawer();
                          //close drawer, if drawer is open
                        } else {
                          scaffoldKey.currentState!.openDrawer();
                          //open drawer, if drawer is closed
                        }
                      },
                      child: const Icon(
                        Icons.mark_unread_chat_alt,
                      ),
                    ),
                    const Text(
                      "App Name",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const UserProfile(),
                              ));
                        },
                        child: const FaIcon(
                          FontAwesomeIcons.circleUser,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height / 20,
              ),
              Container(
                height: mediaQuery.size.height / 4.5,
                width: mediaQuery.size.width * 30,
                color: const Color(0xFF01BDA5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("What do you want to",
                          style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text("learn today?",
                          style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color(0xFF94FFF1),
                            radius: 30,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                            ),
                          ),
                          SvgPicture.asset('assets/images/home.svg'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              DotsIndicator(
                dotsCount: _totalDots,
                position: _currentPosition,
                axis: Axis.horizontal,
                decorator: DotsDecorator(
                  color: Colors.black12,
                  activeColor: Colors.green,
                  size: const Size.square(20.0),
                  activeSize: const Size.square(20.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height / 30,
              ),
              Container(
                height: mediaQuery.size.height / 7,
                width: mediaQuery.size.width * 20,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color(0xFF0A7767),
                        Color(0xFF01BDA5),
                      ],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: SvgPicture.asset('assets/images/home2.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Today is your Exam!',
                            style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'All the best!',
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20))),
                            child: const Center(
                              child: Text(
                                'Know More',
                                style:
                                TextStyle(color: Colors.white, fontSize: 9),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height / 50,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Feeds & News",
                      style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.32,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: lates_post.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.32,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.16,
                              margin: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF3EB52B),
                                      Color(0xFF01BDA5),
                                    ],
                                    begin: FractionalOffset(0.0, 0.0),
                                    end: FractionalOffset(1.0, 0.0),
                                    stops: [0.0, 1.0],
                                    tileMode: TileMode.clamp),
                              ),
                              width: 200,
                              child: Container(
                                child: Center(
                                  child: SvgPicture.asset(
                                    lates_post[index]['image'],
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.comment,
                                    color: Colors.black26,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.paperPlane,
                                    color: Colors.black26,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Description Discription...',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 12),
                                      ),
                                      Text('Description Discription...',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 12))
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                decoration: BoxDecoration(
                  // color: appcolors.greenishText,
                  border: Border.all(
                    width: 3,
                    color: appcolors.greenishText,
                  ),
                ),
                child: TableCalendar(
                  selectedDayPredicate: (day) => isSameDay(day, Today),
                  onDaySelected: onDaySelected,
                  availableGestures: AvailableGestures.all,
                  headerStyle: const HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  focusedDay: Today,
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height / 60,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Students of Month",
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: circleimages.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: const EdgeInsets.all(8),
                          child: CircleAvatar(
                            radius: 30,
                            child: Image.asset(circleimages[index]['images']!),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}

class customContainerImage extends StatelessWidget {
  customContainerImage(
      {required this.BottomLeftCirculer,
        required this.BottomRightCirculer,
        required this.TopLeftCirculer,
        required this.TopRightCirculer,
        required this.image,
        required this.height,
        required this.width,
        Key? key})
      : super(key: key);
  String image;
  double TopRightCirculer;
  double BottomRightCirculer;
  double BottomLeftCirculer;
  double TopLeftCirculer;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(TopLeftCirculer),
            topRight: Radius.circular(TopRightCirculer),
            bottomRight: Radius.circular(BottomRightCirculer),
            bottomLeft: Radius.circular(BottomLeftCirculer)),
        //  border: Border.all(width: 5,color: Colors.red)
      ),
    );
  }
}

class circleContainer extends StatelessWidget {
  circleContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Container(
      height: mediaQuery.size.height / 20,
      width: mediaQuery.size.width * 0.06,
      decoration: BoxDecoration(
        // color: appcolors.greenishText,
        border: Border.all(
          color: appcolors.greenishText,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}



