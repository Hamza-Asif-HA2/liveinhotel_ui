// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySimpleButton extends StatelessWidget {
  final String ButtonText;
  void Function()? onTap;
  final Color color;
  final Color TextColor;
   MySimpleButton({super.key, required this.ButtonText,required this.color,required this.onTap, required this.TextColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(left: 25),
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Text(ButtonText, style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 14, color: TextColor),),
      ),
    );
  }
}