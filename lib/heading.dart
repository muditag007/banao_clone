// ignore_for_file: unused_local_variable

import 'package:banao_clone/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading extends StatelessWidget {
  final String name;
  const Heading({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    double height = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) /
        640;
    double width = MediaQuery.of(context).size.width / 360;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16 * width,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: GoogleFonts.poppins(
              fontSize: 18 * width,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            children: [
              Text(
                'View all',
                style: GoogleFonts.poppins(
                  fontSize: 12 * width,
                  fontWeight: FontWeight.w500,
                  color: kLightText,
                ),
              ),
              Icon(
                Icons.arrow_right_alt,
                color: kLightText,
              )
            ],
          )
        ],
      ),
    );
  }
}
