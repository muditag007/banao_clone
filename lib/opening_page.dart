// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_final_fields

import 'package:banao_clone/constants.dart';
import 'package:banao_clone/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpeningPage extends StatefulWidget {
  const OpeningPage({super.key});
  static String id = 'openingpage';
  @override
  State<OpeningPage> createState() => _OpeningPageState();
}

class _OpeningPageState extends State<OpeningPage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Learn Page',
      style: GoogleFonts.poppins(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Hub Page',
      style: GoogleFonts.poppins(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Chat Page',
      style: GoogleFonts.poppins(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Profile Page',
      style: GoogleFonts.poppins(fontSize: 35, fontWeight: FontWeight.bold),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) /
        640;
    double width = MediaQuery.of(context).size.width / 360;

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('images/Home.png'),
            label: 'Home',
            // backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/Book.png'),
            label: 'Learn',
            // backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/Layout.png'),
            label: 'Hub',
            // backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/Comment.png'),
            label: 'Chat',
            // backgroundColor: Colors.yellow
          ),
          BottomNavigationBarItem(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'images/img4.png',
                height: 20.0*height,
                width: 20.0*height,
              ),
            ),
            label: 'Profile',
            // backgroundColor: Colors.blue,
          ),
        ],
        // type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: kBorderBlue,
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 10 * width,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 10 * width,
          fontWeight: FontWeight.w600,
          color: kLightText,
        ),
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
