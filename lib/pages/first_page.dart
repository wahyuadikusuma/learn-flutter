// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ui/widgets/menu_icon.dart';
import 'package:slicing_ui/widgets/popular_destination_card.dart';
import 'package:slicing_ui/widgets/search_bar.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[50],
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 45.0, horizontal: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Hello, ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Wahyu!',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.account_circle,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(height: 10),
              SearchBarWidget(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'What are you looking for?',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Text(
                    'Show all',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 11.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MenuIcon(
                        textColor: Colors.black,
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        iconColor: Colors.blue,
                        text: 'Nearby',
                        boxSize: 75,
                        iconSize: 45,
                        icon: Icons.room_rounded),
                    MenuIcon(
                        textColor: Colors.black,
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        iconColor: Colors.blue,
                        text: 'Rent Cars',
                        boxSize: 75,
                        iconSize: 45,
                        icon: Icons.car_rental),
                    MenuIcon(
                        textColor: Colors.black,
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        iconColor: Colors.blue,
                        text: 'Feeds',
                        boxSize: 75,
                        iconSize: 35,
                        icon: Icons.reviews_outlined),
                    MenuIcon(
                        textColor: Colors.black,
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        iconColor: Colors.blue,
                        text: 'Promos',
                        boxSize: 75,
                        iconSize: 35,
                        icon: Icons.discount_outlined),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Popular Destination',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    // Expanded(
                    //   child: PopularDestinationsCard(
                    //     destinations: popularDestinations,
                    //   ),
                    // ),
                  ],
                ),
              ),
              HorizontalDestinationList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          // BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }
}

class HorizontalDestinationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Example list of destinations
    final List<Destination> destinations = [
      Destination(
          name: 'HeHa Ocean View',
          location: 'Gunung Kidul, YK',
          image: 'heha_ocean.png'),
      Destination(
          name: 'Pantai Sadranan',
          location: 'Gunung Kidul, YK',
          image: 'sadranan_beach.jpg'),
      Destination(
          name: 'Nawang Jagad',
          location: 'Sleman, YK',
          image: 'nawang_jagad.jpg'),
    ];

    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          return PopularDestinationCard(
            destination: destinations[index],
          );
        },
      ),
    );
  }
}
