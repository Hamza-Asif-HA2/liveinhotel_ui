// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


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

     body: Column(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(),
        ),
      ],
     ), 
    );
  }
}