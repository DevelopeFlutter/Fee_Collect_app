import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
class AccountSetup extends StatefulWidget {
  const AccountSetup({Key? key}) : super(key: key);
  @override
  State<AccountSetup> createState() => _AccountSetupState();
}

class _AccountSetupState extends State<AccountSetup> {
  DateTime Today = DateTime.now();
  void onDaySelected(DateTime day, DateTime FocusedDay) {
    setState(() {
      Today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.red,
        body: Stack(
          children: [
            Container(
              height: mediaQuery.size.height / 2.2,
              width: mediaQuery.size.width * 40,
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0)),
                //  border: Border.all(width: 5,color: Colors.red)
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
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Container(
                height: mediaQuery.size.height / 2.2,
                width: mediaQuery.size.width * 40,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: mediaQuery.size.height / 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        height: mediaQuery.size.height / 9,
                        width: mediaQuery.size.width * 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5)),
                          //  border: Border.all(width: 5,color: Colors.red)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/pencil1.jpg'),
                                radius: 25,
                                backgroundColor: Colors.white,
                              ),
                              Text(
                                "Complete Registration",
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Container(
                                width: mediaQuery.size.width * 0.15,
                                height: mediaQuery.size.height / 15,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.red, width: 1.5),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    "25%",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.size.height/22,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        height: mediaQuery.size.height / 9,
                        width: mediaQuery.size.width * 40,
                        decoration:  BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5)),
                          //  border: Border.all(width: 5,color: Colors.red)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/images/pencil1.jpg'),
                                radius: 25,
                                backgroundColor: Colors.white,
                              ),
                              Text(
                                "Complete Registration",
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Container(
                                width: mediaQuery.size.width * 0.15,
                                height: mediaQuery.size.height / 15,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.red, width: 1.5),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    "25%",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
