// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class Tile extends StatelessWidget {
  final String name;
  final String image;
  const Tile({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    double height = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) /
        640;
    double width = MediaQuery.of(context).size.width / 360;
    return Container(
      width: 160 * width,
      height: 48 * height,
      decoration: BoxDecoration(
        border: Border.all(
          color: kBorderBlue,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(image),
            SizedBox(
              width: 12 * width,
            ),
            Text(
              name,
              style: GoogleFonts.poppins(
                fontSize: 14*width,
                fontWeight: FontWeight.w600,
                color: kBorderBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
