import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        title: Text(
          "About Us",
          style: GoogleFonts.poppins(
              color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
      ),
      //appBar: AppBar(title: Text("About Us"), backgroundColor: Colors.blue,),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  "Daas Innovation Labs",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight:
                          FontWeight.bold),
              ),
            ),
            Card(  
              child: Column(  
                mainAxisSize: MainAxisSize.min,  
                children: <Widget>[  
                   ListTile(  
                    leading: Icon(Icons.person, size: 45),  
                    title: Text('Satyam Chaurasiya'),  
                    subtitle: Text('Software Developer'),  
                  ), 
                 ],  
              ),  
            ),

            Card(  
              child: Column(  
                mainAxisSize: MainAxisSize.min,  
                children: <Widget>[  
                   ListTile(  
                    leading: Icon(Icons.person, size: 45),  
                    title: Text('Abrar Aslam'),  
                    subtitle: Text('Software Developer'),  
                  ), 
                 ],  
              ),  
            ),
            Card(  
              child: Column(  
                mainAxisSize: MainAxisSize.min,  
                children: <Widget>[  
                   ListTile(  
                    leading: Icon(Icons.person, size: 45),  
                    title: Text('Aarush Babbar'),  
                    subtitle: Text('Software Developer'),  
                  ), 
                 ],  
              ),  
            ),
            Card(  
              child: Column(  
                mainAxisSize: MainAxisSize.min,  
                children: <Widget>[  
                   ListTile(  
                    leading: Icon(Icons.person, size: 45),  
                    title: Text('Dnyaneshwar Wakshe'),  
                    subtitle: Text('Software Developer'),  
                  ), 
                 ],  
              ),  
            ),




           
          ],
        ),
      ),

    );
  }
}