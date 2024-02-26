import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'FiltersLocation.dart';
import 'mySimpleButton.dart';

class FilterPop extends StatefulWidget {
  const FilterPop({super.key});

  @override
  State<FilterPop> createState() => _FilterPopState();
}

class _FilterPopState extends State<FilterPop> {

  List<String> Locations = [
    'DownTown Dubai',
    'World Trade Center',
    'Abu Dhabi',
    'Umm Al Qaiwain',
    'Sharjah',
    'DownTown Dubai'
  ];

  List<String> Stars = [
    '1 Star',
    '2 Star',
    '3 Star',
    '4 Star',
    '5 Star',
  ];

  List<String> Hotels = [
    'Hotel Boulevard',
    'Shangri-La',
    'Anantara Downtown',
    'Hotel Boulevard',
    'Shangri-La',
    'Anantara Downtown',
  ];

  List<String> priceRange = [
    '\$20k - \$30k',
    '\$30k - \$40k',
    '\$40k - \$50k',
    '\$60k - \$70k',
    '\$80k - \$90k',
    '\$90k - \$100k',
  ];

  String currentLoc = 'DownTown Dubai';
  String currentStars = '1 Star';
  String currentHotel = 'Hotel Boulevard';
  String currentPrice = '\$20k - \$30k';

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:
      const EdgeInsets.only(left: 70.0),
      child: MySimpleButton(
        TextColor: Colors.white,
        ButtonText: 'Filter',
        color: Color.fromRGBO(28, 57, 121, 1),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return
                AlertDialog(
                  backgroundColor:
                  Color.fromRGBO(
                      28, 57, 121, 1),
                  title: Text(
                    'Filter',
                    style: GoogleFonts.poppins(
                        fontWeight:
                        FontWeight.bold,
                        color: Colors.white),
                  ),
                  content: Expanded(
                    child:
                    Container(
                      width: 300,
                      child: Column(
                        children: [
                          Container(
                            width: 125,
                            height: 42,
                            decoration:
                            BoxDecoration(
                              color:
                              Colors.amber,
                              borderRadius:
                              BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding:
                              const EdgeInsets
                                  .all(
                                  12.0),
                              child: Text(
                                'Location',
                                style:
                                GoogleFonts
                                    .poppins(
                                  fontWeight:
                                  FontWeight
                                      .bold,
                                  fontSize: 14,
                                  color: Colors
                                      .white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            child:
                            ListWheelScrollView
                                .useDelegate(
                              useMagnifier:
                              true,
                              magnification:
                              1.6,
                              itemExtent: 30,
                              onSelectedItemChanged:
                                  (index) {
                                setState(() {
                                   currentLoc = Locations[index];
                                });
                              },

                              childDelegate:
                              ListWheelChildBuilderDelegate(
                                childCount: 6,
                                builder:
                                    (context,
                                    index) {
                                  return FilterLocation(
                                    i: index,
                                    Loc: Locations[index],
                                    textColor: currentLoc == Locations[index] ? Colors.white: Colors.white60,
                                  );
                                },
                              ),
                            ),
                          ),

                          SizedBox(height: 15,),

                          Container(
                            width: 125,
                            height: 45,
                            decoration:
                            BoxDecoration(
                              color:
                              Colors.amber,
                              borderRadius:
                              BorderRadius
                                  .circular(
                                  8),
                            ),
                            child: Padding(
                              padding:
                              const EdgeInsets
                                  .all(
                                  12.0),
                              child: Text(
                                'Ratings',
                                style:
                                GoogleFonts
                                    .poppins(
                                  fontWeight:
                                  FontWeight
                                      .bold,
                                  fontSize: 14,
                                  color: Colors
                                      .white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            child:
                            ListWheelScrollView
                                .useDelegate(
                              useMagnifier:
                              true,
                              magnification:
                              1.6,
                              itemExtent: 30,
                              onSelectedItemChanged:
                                  (index) {
                                setState(() {
                                  currentStars = Stars[index];
                                });
                              },
                              childDelegate:
                              ListWheelChildBuilderDelegate(
                                childCount: 5,
                                builder:
                                    (context,
                                    index) {
                                  return FilterLocation(
                                    i: index,
                                    Loc: Stars[index],
                                    textColor: currentStars == Stars[index] ? Colors.white: Colors.white60,
                                  );
                                },
                              ),
                            ),
                          ),

                          SizedBox(height: 15,),

                          Container(
                            width: 125,
                            height: 45,
                            decoration:
                            BoxDecoration(
                              color:
                              Colors.amber,
                              borderRadius:
                              BorderRadius
                                  .circular(
                                  8),
                            ),
                            child: Padding(
                              padding:
                              const EdgeInsets
                                  .all(
                                  12.0),
                              child: Text(
                                'Hotel',
                                style:
                                GoogleFonts
                                    .poppins(
                                  fontWeight:
                                  FontWeight
                                      .bold,
                                  fontSize: 14,
                                  color: Colors
                                      .white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                           Container(
                            height: 80,
                            child:
                            ListWheelScrollView
                                .useDelegate(
                              useMagnifier:
                              true,
                              magnification:
                              1.6,
                              itemExtent: 30,
                              onSelectedItemChanged:
                                  (index) {
                                setState(() {
                                  currentHotel = Hotels[index];
                                });
                              },
                              childDelegate:
                              ListWheelChildBuilderDelegate(
                                childCount: 5,
                                builder:
                                    (context,
                                    index) {
                                  return FilterLocation(
                                    i: index,
                                    Loc: Hotels[index],
                                    textColor: currentHotel == Hotels[index] ? Colors.white: Colors.white60,
                                  );
                                },
                              ),
                            ),
                          ),

                          SizedBox(height: 15,),

                          Container(
                            width: 125,
                            height: 45,
                            decoration:
                            BoxDecoration(
                              color:
                              Colors.amber,
                              borderRadius:
                              BorderRadius
                                  .circular(
                                  8),
                            ),
                            child: Padding(
                              padding:
                              const EdgeInsets
                                  .all(
                                  12.0),
                              child: Text(
                                'Price Range',
                                style:
                                GoogleFonts
                                    .poppins(
                                  fontWeight:
                                  FontWeight
                                      .bold,
                                  fontSize: 14,
                                  color: Colors
                                      .white,
                                ),
                                textAlign: TextAlign.center,

                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            child:
                            ListWheelScrollView
                                .useDelegate(
                              useMagnifier:
                              true,
                              magnification:
                              1.6,
                              itemExtent: 30,
                              onSelectedItemChanged:
                                  (index) {
                                setState(() {
                                  currentPrice = priceRange[index];
                                });
                              },
                              childDelegate:
                              ListWheelChildBuilderDelegate(
                                childCount: 6,
                                builder:
                                    (context,
                                    index) {
                                  return FilterLocation(
                                    i: index,
                                    Loc: priceRange[index],
                                    textColor: currentPrice == priceRange[index] ? Colors.white: Colors.white60,
                                  );
                                },
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                  actions: <Widget>[
                    Container(
                      width: 125,
                      height: 42,
                      decoration:
                      BoxDecoration(
                        color:
                        Colors.amber,
                        borderRadius:
                        BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding:
                        const EdgeInsets
                            .all(
                            12.0),
                        child: Text(
                          'Search',
                          style:
                          GoogleFonts
                              .poppins(
                            fontWeight:
                            FontWeight
                                .bold,
                            fontSize: 14,
                            color: Colors
                                .white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(width: 40,),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pop();
                      },
                      child: Text(
                        'Cancel',
                        style:
                        GoogleFonts.poppins(
                            color: Colors
                                .white),
                      ),
                    ),


                  ],
                );
            },
          );
        },
      ),
    );
  }
}
