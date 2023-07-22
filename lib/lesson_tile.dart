// ignore_for_file: prefer_const_constructors

import 'package:banao_clone/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonTile extends StatelessWidget {
  const LessonTile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) /
        640;
    double width = MediaQuery.of(context).size.width / 360;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4*width),
      child: Container(
        height: 280 * height,
        width: 242 * width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // color: Colors.red,
            border: Border.all(
              color: kBorder,
              width: 2,
            )),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(221, 227, 194, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Center(
                child: Container(
                  height: 140 * height,
                  width: 140 * width,
                  child: Image.asset('images/img1.png'),
                ),
              ),
            ),
            SizedBox(
              height: 16 * height,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12 * width),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "LIFESTYLE",
                      style: GoogleFonts.poppins(
                        fontSize: 16 * width,
                        fontWeight: FontWeight.w700,
                        color: kBorderBlue,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8 * height,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "A complete guide for your new born baby",
                      maxLines: 2,
                      style: GoogleFonts.poppins(
                        fontSize: 16 * width,
                        fontWeight: FontWeight.w700,
                        // color: kBorderBlue,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15 * height,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "16 Lessons",
                      // maxLines: 2,
                      style: GoogleFonts.poppins(
                        fontSize: 12 * width,
                        fontWeight: FontWeight.w500,
                        color: kLightText,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
