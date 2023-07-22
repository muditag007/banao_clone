// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
//360x640
import 'package:banao_clone/book_tile.dart';
import 'package:banao_clone/constants.dart';
import 'package:banao_clone/heading.dart';
import 'package:banao_clone/lesson_tile.dart';
import 'package:banao_clone/tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = "homepage";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) /
        640;
    double width = MediaQuery.of(context).size.width / 360;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            // left: 16,
            // right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 276 * height,
                decoration: BoxDecoration(
                  color: kBlue,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 13.0 * width,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16 * height,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('images/Menu.png'),
                          Row(
                            children: [
                              Image.asset('images/message.png'),
                              SizedBox(width: 16*width,),
                              Image.asset('images/Notification.png'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24 * height,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Hello Priya",
                          style: GoogleFonts.poppins(
                            fontSize: 20 * width,
                            color: kText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2 * height,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "What do you wanna learn today",
                          style: GoogleFonts.poppins(
                            fontSize: 12 * width,
                            color: kLightText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32 * height,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Tile(name: 'Programs', image: 'images/Book-mark.png'),
                          Tile(
                              name: 'Get help',
                              image: 'images/help circle.png'),
                        ],
                      ),
                      SizedBox(
                        height: 8 * height,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Tile(name: 'Learn', image: 'images/Book-open.png'),
                          Tile(name: 'DD Tracker', image: 'images/trello.png'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24 * height,
              ),
              Heading(name: 'Programs for you'),
              SizedBox(
                height: 24 * height,
              ),
              Container(
                height: 280 * height,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12 * width),
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return LessonTile();
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 32 * height,
              ),
              Heading(name: 'Programs for you'),
              SizedBox(
                height: 24 * height,
              ),
              Container(
                height: 280 * height,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12 * width),
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return BookTile();
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 32 * height,
              ),
              Heading(name: 'Programs for you'),
              SizedBox(
                height: 24 * height,
              ),
              Container(
                height: 280 * height,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12 * width),
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return BookTile();
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 32 * height,
              ),
              Heading(name: 'Programs for you'),
              SizedBox(
                height: 24 * height,
              ),
              Container(
                height: 280 * height,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12 * width),
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return BookTile();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
