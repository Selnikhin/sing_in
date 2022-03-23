import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
SignIn() {
  return Expanded(
    flex: 4,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Войти',
          style: GoogleFonts.comforter(color: Colors.black, fontSize: 40),
        ),
        CircleAvatar(
          backgroundColor: Colors.blue.shade800,
          radius: 15,
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}