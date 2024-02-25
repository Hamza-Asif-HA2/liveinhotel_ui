
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class FilterLocation extends StatelessWidget {
  final int i;
  final String Loc;
  final Color textColor;
   FilterLocation({super.key, required this.i, required this.Loc, required this.textColor});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Color.fromRGBO(
        //   0,
        //   0,
        //   0,
        //   0.5,
        // ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Text(
         Loc,
          style: GoogleFonts.poppins(
              color: textColor, fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ),
    );
  }
}
