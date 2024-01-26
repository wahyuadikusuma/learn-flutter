// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blueAccent,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue[500],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.transparent), // Tambahkan ini
                ),
                child: Icon(
                  Icons.all_inclusive_sharp,
                  color: Colors.white,
                  size: 48,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: Text(
                'INFINITY CLUB',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'LemonMilk',
                ),
              ),
            ),

            // home page
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text('H O M E',
                  style: TextStyle(
                      fontFamily: 'LemonMilk',
                      color: Colors.white,
                      fontSize: 12)),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 1.1,
                color: Colors.white,
              ),
            ),

            // setting page

            // home page
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text('S E T T I N G',
                  style: TextStyle(
                      fontFamily: 'LemonMilk',
                      color: Colors.white,
                      fontSize: 12)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/setting');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}