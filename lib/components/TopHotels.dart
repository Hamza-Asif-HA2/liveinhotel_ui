

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ContactButtons.dart';

class TopHotels extends StatelessWidget {
  final String image;
  final String HotelName;
  final int Stars;
  final String Location;
  final int Rent;
  const TopHotels({super.key, required this.image, required this.HotelName, required this.Stars, required this.Location, required this.Rent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(-4, -4),
              color: Colors.grey.shade500,
              blurRadius: 8,
              spreadRadius: 1,
            ),
            BoxShadow(
              offset: Offset(-4, -4),
              color: Colors.white,
              blurRadius: 2,
              spreadRadius: 0,
            ),
          ],
        ),
        width: 250, // Adjust the width of the container
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8), // Adjust the border radius as needed
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover, // Adjust the fit of the image within the container
                  ),
                ),
              ),
              SizedBox(height: 8), // Add some space between the image and the text
              //hotel name
              Text(
                HotelName,
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),

              //hotel stars + location
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Row(

                  children: [
                    for(int i = 0; i<Stars; i++)
                      Icon(Icons.star, color: Colors.amber,),
                    SizedBox(width: 12),
                    Icon(Icons.location_on, color: Colors.grey,),
                    Text(Location),
                  ],
                ),
              ),
              SizedBox(height: 8),
              //rent
              Text(' ${Rent} /yearly', style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContactButton(Contact: 'Whatsapp', Icondata: Icons.chat),
                  ContactButton(Contact: 'Call', Icondata: Icons.phone),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
