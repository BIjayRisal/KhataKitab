import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KhataKitabText extends StatelessWidget {
  final double fontSize;
  const KhataKitabText({Key? key,  required this.fontSize,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Khata Kitab",
      style: GoogleFonts.nunito(
        textStyle: TextStyle(fontWeight: FontWeight.bold,
        fontSize: fontSize,
          color: Colors.deepPurple),
      ),
    );

  }
}


