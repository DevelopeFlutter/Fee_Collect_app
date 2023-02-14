import 'package:flutter/material.dart';
import 'package:new_project/Auth_Services/login_screen.dart';
import 'package:new_project/Theme/aap_Colors.dart';
import 'package:new_project/home_screen/Account_Setup.dart';
import 'package:new_project/home_screen/Home_screen.dart';
import 'package:new_project/home_screen/time_Table_scree.dart';
import 'package:new_project/home_screen/user_Profile.dart';
class BottomBarView extends StatelessWidget {
  const BottomBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BottomBar();
  }
}
class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static  final List<Widget> _widgetOptions = <Widget>[
    const Home_screen(),
    AccountSetup(),
    UserProfile(),
    TimeTabale()
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar:BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.menu,
                size: 25,
                color:  appcolors.greenishText,),
              label: 'Menu',

            ),
            BottomNavigationBarItem(
              icon:  Icon(
                Icons.video_collection_outlined,
                size: 25,
                color:  Colors.black26,
              ),
              label: 'Applications',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_work,
                size: 25,
                color:  Colors.black26,
              ),
              label: 'My Profile',
            ),
            BottomNavigationBarItem(
              icon:
              Icon(
                size:25,
                Icons.calendar_month,
                color: Colors.black26,

              ),
              label:
              'Time Table',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: appcolors.greenishText,
          unselectedItemColor: appcolors.greenishText,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
        ));

  }
}


