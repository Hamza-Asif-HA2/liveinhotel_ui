import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LocMenu extends StatelessWidget {
  final String LocInfo;
  const LocMenu({super.key, required this.LocInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(6),),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),child:Text(LocInfo, style:GoogleFonts.poppins(fontWeight: FontWeight.bold)),),
            Icon(Icons.arrow_drop_down_sharp, color: Colors.grey,),
          ],
        ),
      ),
    );
  }
}


