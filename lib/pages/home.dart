// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liveinhotel_ui/components/BlurContainer.dart';
import 'package:liveinhotel_ui/components/ContactButtons.dart';
import 'package:liveinhotel_ui/components/EndDrawer.dart';
import 'package:liveinhotel_ui/components/FilterPop.dart';
import 'package:liveinhotel_ui/components/FiltersLocation.dart';
import 'package:liveinhotel_ui/components/LocMenu.dart';
import 'package:liveinhotel_ui/components/MyMenuDrawer.dart';
import 'package:liveinhotel_ui/components/TopHotels.dart';
import 'package:liveinhotel_ui/components/mySimpleButton.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Live',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white)),
            Text('in',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.amber)),
            Text('Hotels.ae',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white)),
          ],
        ),
        backgroundColor: Color.fromRGBO(28, 57, 121, 1),
      ),
      drawer: MyMenuDrawer(),
      //endDrawer: MyEndDrawer(),
      body: Container(
        child: ListView(scrollDirection: Axis.vertical, children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  //height: 280,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Image.asset('images/reception.jpg'),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 0, 0, 0.4)),
                          height: 263,
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Why choose regular apartments?',
                              style: GoogleFonts.poppins(color: Colors.white),
                            ),
                            Text(
                            'Enjoy all the hotel amenities at the same price',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  BlurContainer(
                                      ButtonText: '95%',
                                      ButtonText2: 'Occupancy rate annually',
                                      color:
                                          Color.fromRGBO(105, 105, 105, 0.7)),
                                  BlurContainer(
                                      ButtonText: '4.9',
                                      ButtonText2: 'Average customer rating',
                                      color:
                                          Color.fromRGBO(105, 105, 105, 0.7)),
                                  BlurContainer(
                                      ButtonText: '1000 +',
                                      ButtonText2: 'Bookings last \nyear',
                                      color:
                                          Color.fromRGBO(105, 105, 105, 0.7)),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 45.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 12),
                                  child: Row(
                                    children: [
                                      Icon(Icons.search),
                                      Text(
                                        'Search hotel....',
                                        style: GoogleFonts.poppins(
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                     FilterPop(),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dubai’s top-notch hotels',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle the "more hotels" action
                      },
                      child: Text(
                        'more hotels',
                        style: GoogleFonts.poppins(
                          color: Color.fromRGBO(28, 57, 121, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TopHotels(
                        image: 'images/hotel2.jpg',
                        HotelName: 'Hotel Boulevard, Autograph',
                        Stars: 4,
                        Location: 'DownTown Dubai',
                        Rent: 2000000),
                    TopHotels(
                        image: 'images/room2.jpg',
                        HotelName: 'Shangri-La Dubai',
                        Stars: 4,
                        Location: 'DownTown Dubai',
                        Rent: 112000),
                    TopHotels(
                        image: 'images/hotel2.jpg',
                        HotelName: 'Hotel Boulevard, Autograph',
                        Stars: 4,
                        Location: 'DownTown Dubai',
                        Rent: 42642),
                    TopHotels(
                        image: 'images/room2.jpg',
                        HotelName: 'Shangri-La Dubai',
                        Stars: 7,
                        Location: ' Dubai',
                        Rent: 345234)
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
