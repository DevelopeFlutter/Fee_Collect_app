import 'package:flutter/material.dart';

class TimeTabale extends StatefulWidget {
  const TimeTabale({Key? key}) : super(key: key);

  @override
  State<TimeTabale> createState() => _TimeTabaleState();
}

class _TimeTabaleState extends State<TimeTabale> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          splashColor: Colors.deepPurple,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          backgroundColor: Colors.deepPurpleAccent,
          child: const Icon(
            Icons.add,
            size: 50,
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.deepPurpleAccent,
            elevation: 0.0,
            title: const Text("MY TIME TABLE")),
        body: Column(
          children: [
             SizedBox(
              height: mediaQuery.size.height/40,
            ),
            const HorizontalDayList(),
             SizedBox(
              height: mediaQuery.size.height/40,
             ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    boxShadow: [BoxShadow(blurRadius: 10.0)]),
              ),
            ),
          ],
        ));
  }
}

class HorizontalDayList extends StatefulWidget {
  const HorizontalDayList({Key? key}) : super(key: key);

  @override
  State<HorizontalDayList> createState() => _HorizontalDayListState();
}

class _HorizontalDayListState extends State<HorizontalDayList> {
  List<String> weekdays = ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"];

  Color activeCardColor = Colors.white;

  Color inactiveCardColor = Colors.black26;

  Color activeTextColor = Colors.black;

  Color inactiveTextColor = Colors.white;

  List<List<Color>> cardColorList = [
    [Colors.black26, Colors.white],
    [Colors.black26, Colors.white],
    [Colors.black26, Colors.white],
    [Colors.black26, Colors.white],
    [Colors.black26, Colors.white],
    [Colors.black26, Colors.white],
    [Colors.black26, Colors.white],
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: weekdays.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.only(left: 5, right: 5),
            height: mediaQuery.size.height/70,
            width: mediaQuery.size.width*0.15,
            decoration: BoxDecoration(
                color: cardColorList[index][0],
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  weekdays[index],
                  style: TextStyle(
                      fontSize: 18,
                      color: cardColorList[index][1],
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
