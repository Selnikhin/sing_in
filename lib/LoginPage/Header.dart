import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Header() {
  return Expanded(
    flex: 3,
    child: Container(
        alignment: Alignment.bottomLeft,
        child: Text(
          'Добро пожаловать',
          style: GoogleFonts.comforter(color: Colors.black, fontSize: 53),
        ),
        ),
  );
}
