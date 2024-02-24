import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlurContainer extends StatelessWidget {
  final String ButtonText;
  final Color color;
  final String ButtonText2;

  const BlurContainer({
    Key? key,
    required this.ButtonText,
    required this.ButtonText2,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
        child: Container(
          padding: EdgeInsets.all(5),
          decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Text(
                ButtonText,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                ButtonText2,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
