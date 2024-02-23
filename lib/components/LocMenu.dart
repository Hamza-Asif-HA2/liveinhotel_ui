import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LocMenu extends StatelessWidget {
  final String LocInfo;
  const LocMenu({super.key, required this.LocInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(6),),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.all(12),child:Text(LocInfo, style:GoogleFonts.poppins(fontWeight: FontWeight.bold)),),
            Icon(Icons.arrow_drop_down_sharp, color: Colors.grey,)

          ],
        ),
      ),
    );
  }
}


// Row(
// children: [
// Padding(padding: EdgeInsets.symmetric(horizontal: 22),
// child:
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(8),
// color: Color.fromRGBO(255, 191, 0, 0.9),
// ),
// child: Column(
// children: [
// Row(
// children: [
// LocMenu(LocInfo: '- Select Location -'),
// LocMenu(LocInfo: '- Select Bedrooms -'),
// ],
// ),
//
// Row(
// children: [
// LocMenu(LocInfo: 'Select Hotel Stars  '),
// LocMenu(LocInfo: 'Select Rental Period'),
// ],
// ),
// ],
// ),
// ),)
//
// ],
// ),
