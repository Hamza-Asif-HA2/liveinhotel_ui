// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySimpleButton extends StatelessWidget {
  final String ButtonText;
  void Function()? onTap;
  final Color color;
   MySimpleButton({super.key, required this.ButtonText,required this.color,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
        child: Text(ButtonText, style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 20),),
      ),
    );
  }
}