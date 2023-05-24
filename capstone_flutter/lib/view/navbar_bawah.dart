import 'package:capstone_flutter/view/menu_utama/event.dart';
import 'package:capstone_flutter/view/menu_utama/home.dart';
import 'package:capstone_flutter/view/menu_utama/profile.dart';
import 'package:capstone_flutter/view/menu_utama/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavbarBawah extends StatefulWidget {
  const NavbarBawah({super.key});

  @override
  State<NavbarBawah> createState() => _NavbarBawahState();
}

class _NavbarBawahState extends State<NavbarBawah> {
  int _selectedPage = 0;

  static List<Widget> _widgethome = <Widget>[
    HomePageScreen(),
    EventPage(),
    ShopPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Center(child: _widgethome.elementAt(_selectedPage)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 62.h,
              width: 360.w,
              child: ClipRRect(
                child: BottomNavigationBar(
                  unselectedItemColor: Colors.black,
                  showUnselectedLabels: true,
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Image.asset(
                          'assets/icon/bottom_navigasi_icon/home.png',
                          height: 18,
                          width: 18,
                          color: _selectedPage == 0 ? Colors.brown : null),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                        icon: Image.asset(
                          'assets/icon/bottom_navigasi_icon/date_range.png',
                          color: _selectedPage == 1 ? Colors.brown : null,
                          height: 18,
                          width: 18,
                        ),
                        label: 'Event'),
                    BottomNavigationBarItem(
                        icon: Image.asset(
                          'assets/icon/bottom_navigasi_icon/store.png',
                          color: _selectedPage == 2 ? Colors.brown : null,
                          height: 18,
                          width: 18,
                        ),
                        label: 'Shop'),
                    BottomNavigationBarItem(
                        icon: Image.asset(
                          'assets/icon/bottom_navigasi_icon/person.png',
                          color: _selectedPage == 3 ? Colors.brown : null,
                          height: 18,
                          width: 18,
                        ),
                        label: 'Profile'),
                  ],
                  currentIndex: _selectedPage,
                  selectedItemColor: Colors.black,
                  onTap: _onItemTapped,
                  iconSize: 24,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
