// ignore_for_file: prefer_const_constructors
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color iconColor;
  final String text;
  final IconData icon;
  final double iconSize;
  final double boxSize;

  const MenuIcon(
      {Key? key,
      required this.textColor,
      required this.backgroundColor,
      required this.iconColor,
      required this.text,
      required this.iconSize,
      required this.boxSize,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: boxSize,
          height: boxSize,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blueAccent,
              width: 0.3,
            ),
            borderRadius: BorderRadius.all(Radius.circular(27)),
            color:
                backgroundColor, // Ganti warna latar belakang sesuai kebutuhan
          ),
          padding: EdgeInsets.all(10),
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor, // Ganti warna ikon sesuai kebutuhan
          ),
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}
