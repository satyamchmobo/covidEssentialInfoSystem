import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Web extends StatelessWidget {
  final String url;
  //final String id;
  Web({this.url,});
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      
      home: Scaffold(
        appBar:
            AppBar(
              title: Text("Welcome to Web"),
              ),
        body:      
              WebView(
                  initialUrl: url,
                  javascriptMode: JavascriptMode.unrestricted,
                ),
      ),
     
              
    );
  }
  
}