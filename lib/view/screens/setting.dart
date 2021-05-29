import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        title: Text(
          "Settings",
          style: GoogleFonts.poppins(
              color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("App Color "),
            Icon(Icons.toggle_off),
           
            



           
          ],
        ),
      ),

    );
  }
}