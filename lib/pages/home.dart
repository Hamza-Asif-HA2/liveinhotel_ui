// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liveinhotel_ui/components/BlurContainer.dart';
import 'package:liveinhotel_ui/components/LocMenu.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: 
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Live', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white)),
            Text('in', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.amber)),
            Text('Hotels.ae', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white)),
        ],
      ), 
      backgroundColor:  Color.fromRGBO(28, 57, 121, 1),
      actions: [Padding(
        padding: const EdgeInsets.symmetric(horizontal:12.0),
        child: Icon(Icons.notifications,),
      ),
      ],   
      ),
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(28, 57, 121, 1),
      child: Container(
        child: ListView(
          children: [
            DrawerHeader(
              child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Live', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
            Text('in', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.amber)),
            Text('Hotels.ae', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
        ],
      ), 
      ),
      ListTile(
        leading: Icon(Icons.home, color: Colors.white,),
        title: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('Home', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: ((context) => HomePage()))
        );
        }
      ),


      ListTile(
        leading: Icon(Icons.article , color: Colors.white,),
        title: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('Travel Blog', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: ((context) => HomePage()))
        );
        }
      ),


      ListTile(
        leading: Icon(Icons.info , color: Colors.white,),
        title: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('About Us', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: ((context) => HomePage()))
        );
        }
      ),


      ListTile(
        leading: Icon(Icons.contact_phone , color: Colors.white,),
        title: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('Contact Us', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: ((context) => HomePage()))
        );
        }
      ),


      ListTile(
        leading: Icon(Icons.attach_money , color: Colors.white,),
        title: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('Rent', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: ((context) => HomePage()))
        );
        }
      ),


          ],
        ),
      ),
      ),

     body: ListView(
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
                  Expanded(child: Container(decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.4) ),height: 305,),),

                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 45,),
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
                  )
                ],
              ),
            ),
          ],
         ),
       ),
          ]
     ), 
    );
  }
}