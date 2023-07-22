// ignore_for_file: prefer_const_constructors

import 'package:banao_clone/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookTile extends StatelessWidget {
  const BookTile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) /
        640;
    double width = MediaQuery.of(context).size.width / 360;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4 * width),
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
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              child: Image.asset(
                'images/img3.jpeg',
                fit: BoxFit.cover,
                height: 140*height,
                width: double.infinity,
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
                      "BABYCARE",
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
                      "Understanding of human behaviour",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "13 Feb, Sunday",
                        // maxLines: 2,
                        style: GoogleFonts.poppins(
                          fontSize: 12 * width,
                          fontWeight: FontWeight.w500,
                          color: kLightText,
                        ),
                      ),
                      Container(
                        height: 26 * height,
                        width: 62 * width,
                        decoration: BoxDecoration(
                          border: Border.all(color: kBorderBlue, width: 1),
                          borderRadius: BorderRadius.circular(26),
                        ),
                        child: Center(
                          child: Text(
                            'Book',
                            style: GoogleFonts.poppins(
                              fontSize: 12 * width,
                              fontWeight: FontWeight.w600,
                              color: kBorderBlue,
                            ),
                          ),
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
    );
  }
}
