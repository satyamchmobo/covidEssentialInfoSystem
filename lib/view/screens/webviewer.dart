import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Web extends StatelessWidget {
 
  final String url;
  String websiteName; 

  Web({this.url, this.websiteName});
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
        appBar:AppBar(
              title: Text(websiteName,
               style: GoogleFonts.poppins(
              color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w600),
              ),
              backgroundColor: Colors.white,
              leading: BackButton(
                color: Colors.grey,
                onPressed: (){
                  Navigator.pop(context);
                },
                ),
              ),
        body:WebView(
                  initialUrl: url,
                  javascriptMode: JavascriptMode.unrestricted,
                ),
      ),
     );
  }
  
}