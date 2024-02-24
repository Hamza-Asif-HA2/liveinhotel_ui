import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LocMenu.dart';

class MyEndDrawer extends StatelessWidget {
  const MyEndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(105, 105, 105, 0.3),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child:Container(
            child: ListView(
        children: [
          DrawerHeader(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dubai\'s', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white,),),
                Text('TopNotch', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.amber, )),
                Text('Hotels', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white,)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: ListTile(
              leading: Icon(Icons.location_on, color: Colors.white,),
              title: LocMenu(LocInfo: '- SELECT LOCATION-'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: ListTile(
              leading: Icon(Icons.bed, color: Colors.white,),
              title: LocMenu(LocInfo: '-  BEDROOMS -'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: ListTile(
              leading: Icon(Icons.star, color: Colors.white,),
              title: LocMenu(LocInfo: '- HOTEL STARS -'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: ListTile(
              leading: Icon(Icons.timer_outlined, color: Colors.white,),
              title: LocMenu(LocInfo: '- RENTAL PERIOD -'),
            ),
          )
        ])
        ),
      ),
    ),
    );
  }
}
