import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 HeaderUp() {
  return Expanded(
    flex: 3,
    child: Container(
      alignment: Alignment.bottomLeft,
      child: Text(
        'Регистрация аккаунта',
        style: GoogleFonts.comforter(color: Colors.black, fontSize: 50),
      ),
    ),
  );
}