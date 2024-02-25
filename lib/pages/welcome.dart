// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liveinhotel_ui/components/mySimpleButton.dart';

import 'home.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 57, 121, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //main text
                Text('Live',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        color: Colors.white)),
                Text('in',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        color: Colors.amber)),
                Text('Hotels.ae',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        color: Colors.white)),
              ],
            ),
            Icon(
              Icons.hotel,
              color: Colors.white,
              size: 154,
            ),
            //Space
            const SizedBox(
              height: 10,
            ),
            //subline
            Text(
              'Enjoy all the hotel amenities at the same price',
              style: GoogleFonts.poppins(
                  fontStyle: FontStyle.italic,
                  fontSize: 14,
                  color: Colors.white),
            ),
            //Space
            const SizedBox(
              height: 75,
            ),
            //button
            MySimpleButton(
              TextColor: Colors.black,
              ButtonText: 'Book Now',
              color: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => HomePage()),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
