import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khata/navigation/navpage.dart';
import 'package:khata/widgets/khataKitabText.dart';
class DashboardPage extends StatelessWidget {



     int _value =  1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavPage(),
      appBar: AppBar(
        title:Text("Khata Kitab") ,
      ),
      body: Container(
        child: Center(child: Text("Khata Kitab", style: GoogleFonts.pacifico(fontSize: 30, fontWeight: FontWeight.bold),)),

      )
    );
  }


}
