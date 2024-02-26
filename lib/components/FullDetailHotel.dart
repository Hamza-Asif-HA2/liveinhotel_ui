import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ContactButtons.dart';

class FullDetailHotel extends StatelessWidget {
  final String image1;
  final String image2;
  final String image3;
  final String image4;
  final String map;
  final String HotelName;
  final String description;
  final int Stars;
  final String Location;
  final int Rent;
  final int bedRooms;
  final int bathRooms;
  final int Guests;
  final int propertySize;

  const FullDetailHotel({
    super.key,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.map,
    required this.HotelName,
    required this.description,
    required this.Stars,
    required this.Location,
    required this.Rent,
    required this.Guests,
    required this.bedRooms,
    required this.bathRooms,
    required this.propertySize,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          image1,
                        ),
                        SizedBox(height: 8),
                        // Add some space between the image and the text
                        //hotel name
                        Text(
                          HotelName,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),

                        Text(
                          Location,
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color.fromRGBO(28, 57, 121, 1),
                                ),
                                height: 70,
                                width: 90,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        '$Guests',
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        'Guests',
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color.fromRGBO(28, 57, 121, 1),
                                ),
                                height: 70,
                                width: 90,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        '$bedRooms',
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        'Bedrooms',
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color.fromRGBO(28, 57, 121, 1),
                                ),
                                height: 70,
                                width: 90,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        '$bathRooms',
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        'Bathrooms',
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'About this place',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          description,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 8),
                        //rent
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rental Cost',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '$Rent  per year',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 8),
                        //rent
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Property Size',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '$propertySize sqft',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                  ),
                                ),
                                Icon(
                                  Icons.home_outlined,
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 8),
                        //rent
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Where you\'ll be',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            AspectRatio(
                              aspectRatio: 16 / 8,
                              // Adjust the aspect ratio as needed
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                // Adjust the border radius as needed
                                child: Image.asset(
                                  map,
                                  fit: BoxFit
                                      .cover, // Adjust the fit of the image within the container
                                ),
                              ),
                            ),
                          ],
                        ),

                        // hotel Rating
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 2.0, vertical: 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rating',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              SizedBox(height: 4),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  '$Stars.5',
                                  style: GoogleFonts.poppins(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  for (int i = 0; i < 5; i++)
                                    Icon(
                                      i < Stars
                                          ? Icons.star
                                          : Icons.star_border,
                                      color: Colors.amber,
                                      size: 18,
                                    ),
                                ],
                              ),
                              Text(
                                '(200 Reviews)',
                                style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 2.0, vertical: 6),
                          child: Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Gallery',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold, fontSize: 18),
                                      ),
                                      SizedBox(height: 4),
                                      Container(
                                        height: 175,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Image.asset(image2,),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Image.asset(image3,),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Image.asset(image1,),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Image.asset(image4,),
                                            ),
                                          ]
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(28, 57, 121, 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 6, vertical: 12),
                        child: Text('Reserve',
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 16)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}
