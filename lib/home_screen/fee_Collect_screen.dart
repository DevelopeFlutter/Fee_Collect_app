import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/Theme/aap_Colors.dart';
class CollectFee extends StatefulWidget {
  const CollectFee({Key? key}) : super(key: key);

  @override
  State<CollectFee> createState() => _CollectFeeState();
}
class _CollectFeeState extends State<CollectFee> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(
                mediaQuery.size.height / 9), // here the desired height
            child: AppBar(
              elevation: 0,
              backgroundColor: appcolors.greenishText,
              title:  Text(
                "Fees",
                style:GoogleFonts.montserrat(
                    fontSize: 16,
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
        body: Column(
          children: [
            Container(
              color: Colors.grey.withOpacity(0.4),
              height: mediaQuery.size.height / 15,
              child: Row(
                children:  [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Grand Total",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                       Text(
                        "Amount",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: mediaQuery.size.height / 130,
                      ),
                       Text(
                        "\$ 11700.00",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: [
                       Text(
                        "Discount",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: mediaQuery.size.height / 130,
                      ),
                       Text(
                        "\$ 10.00",
                        style:GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: [
                       Text(
                        "Fine",
                        style:GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: mediaQuery.size.height / 130,
                      ),
                       Text(
                        "\$0.00",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: [
                       Text(
                         "Paid",
                        style:GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: mediaQuery.size.height / 130,
                      ),
                       Text(
                        "\$1200.00",
                        style:GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: [
                       Text(
                        "Balance",
                        style:GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: mediaQuery.size.height / 130,
                      ),
                      Text(
                        "\$1300.00",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height / 130,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7, right: 7),
              child: Container(
                height: mediaQuery.size.height / 9,
                color: Colors.grey.withOpacity(0.4),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text(
                        "Class 1 General-Admission Fees",
                        style: GoogleFonts.montserrat(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "View",
                        style: GoogleFonts.montserrat(
                            fontSize: 17,
                            color: appcolors.greenishText,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: [
                       Text('Due Date',
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: mediaQuery.size.height / 190,
                      ),
                       Text('Amount',
                          style:GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: mediaQuery.size.height / 190,
                      ),
                       Text('Paid Amount',
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: mediaQuery.size.height / 190,
                      ),
                       Text('Balance Amount',
                          style:GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: [
                       Text('10-12-2022',
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: mediaQuery.size.height / 190,
                      ),
                       Text('\$1000.00',
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: mediaQuery.size.height / 190,
                      ),
                       Text('\$1000.00',
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: mediaQuery.size.height / 190,
                      ),
                       Text('\$0.00',
                          style:GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap:(){
                          // PaymentScreen();
                        },
                        child: Container(
                            height: mediaQuery.size.height / 25,
                            width: mediaQuery.size.width * 0.22,
                            decoration: BoxDecoration(
                              color: Colors.green.shade500,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child:  Center(
                              child: Text(
                                'Paid',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height / 40,
            ),
            Divider(
              color: Colors.black.withOpacity(0.2),
              thickness: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7, right: 7),
              child: Container(
                height: mediaQuery.size.height / 9,
                color: Colors.grey.withOpacity(0.4),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text(
                        "Class 1 General-April Fees",
                        style:GoogleFonts.montserrat(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "View",
                        style: GoogleFonts.montserrat(
                            fontSize: 17,
                            color: appcolors.greenishText,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            ),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                 Text('Due Date',
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: mediaQuery.size.height / 190,
                ),
                 Text('Amount',
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: mediaQuery.size.height / 190,
                ),
                 Text('Paid Amount',
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: mediaQuery.size.height / 190,
                ),
                 Text('Balance Amount',
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w500)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                Container(
                    height: mediaQuery.size.height / 25,
                    width: mediaQuery.size.width * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.red.shade300,
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    child:  Center(
                      child: Text(
                        '10-12-2022',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    )),
                SizedBox(
                  height: mediaQuery.size.height / 190,
                ),
                 Text('\$1000.00',
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: mediaQuery.size.height / 190,
                ),
                 Text('\$1000.00',
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: mediaQuery.size.height / 190,
                ),
                 Text('\$0.00',
                    style:GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w500)),
              ],
            ),
            Column(
              children: [
                Container(
                    height: mediaQuery.size.height / 24,
                    width: mediaQuery.size.width * 0.24,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child:  Center(
                      child: Text(
                        'Partial',
                        style:GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ))
              ],
            )
          ],
        )),
            SizedBox(
              height: mediaQuery.size.height / 70,
            ),
            Divider(
              color: Colors.black.withOpacity(0.2),
              thickness: 1.5,
            ),

          ],
        ),
      ),
    );
  }
}
