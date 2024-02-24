// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liveinhotel_ui/components/BlurContainer.dart';
import 'package:liveinhotel_ui/components/ContactButtons.dart';
import 'package:liveinhotel_ui/components/EndDrawer.dart';
import 'package:liveinhotel_ui/components/LocMenu.dart';
import 'package:liveinhotel_ui/components/MyMenuDrawer.dart';
import 'package:liveinhotel_ui/components/TopHotels.dart';
import 'package:liveinhotel_ui/components/mySimpleButton.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title:
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('Live', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white)),
            Text('in', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.amber)),
            Text('Hotels.ae', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white)),
        ],
      ),

      backgroundColor:  Color.fromRGBO(28, 57, 121, 1),

      ),
      drawer: MyMenuDrawer(),
     endDrawer: MyEndDrawer(),
     body: Container(
       child: ListView(
         scrollDirection: Axis.vertical,
         children: [
           Expanded(
           child: Column(
                         children: [
            Container(
              //height: 280,
              decoration: BoxDecoration(
              ),
              child: Stack(
                children: [
                  Image.asset('images/reception.jpg'),
                  Expanded(child: Container(decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.4) ),height: 263,),),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text('Why choose regular apartments?', style: GoogleFonts.poppins(color: Colors.white),),
                        Text('Enjoy all the hotel amenities at the same price', style: GoogleFonts.poppins(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic), textAlign: TextAlign.center,),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BlurContainer(ButtonText: '95%', ButtonText2: 'Occupancy \nrate annually', color: Color.fromRGBO(105, 105, 105, 0.7)),
                              BlurContainer(ButtonText: '4.9', ButtonText2: 'Average \ncustomer rating', color: Color.fromRGBO(105, 105, 105, 0.7)),
                              BlurContainer(ButtonText: '1000 +', ButtonText2: 'Bookings \nlast year', color: Color.fromRGBO(105, 105, 105, 0.7)),
                            ],
                          ),
                        ),
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
                         fontSize: 18,
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
                    TopHotels(image: 'images/hotel2.jpg', HotelName: 'Hotel Boulevard, Autograph', Stars: 3, Location: 'DownTown Dubai', Rent: 2000000),
                      TopHotels(image: 'images/room2.jpg', HotelName: 'Shangri-La Dubai', Stars: 3, Location: 'DownTown Dubai', Rent: 112000),
                     TopHotels(image: 'images/hotel2.jpg', HotelName: 'Hotel Boulevard, Autograph', Stars: 2, Location: 'DownTown Dubai', Rent: 42642),
                     TopHotels(image: 'images/room2.jpg', HotelName: 'Shangri-La Dubai', Stars: 4, Location: 'Dubaii', Rent: 345234)
                   ],
                 ),
               ),
             ],
           ),

         ]
       ),
     ),
    );
  }
}