import 'package:flutter/material.dart';

import 'webviewer.dart';

class Twittercard extends StatefulWidget {
  @override
  _TwittercardState createState() => _TwittercardState();
}

class _TwittercardState extends State<Twittercard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body:
        Center( 
          child: Container(
              height: 110, 
              child: Card(
                      child: Column(
                         children: [
                    Container(                                              
                          child: IconButton(
                            icon: Image.asset('assets/twitter_icon.png',),            
                            iconSize: 60,                                                   
                              onPressed: (){   
                                // Navigator.of(context)
                                //   .push(MaterialPageRoute(builder:(_)=>Web()));                          
                                }
                         ),
                    ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text('Go to Web'),
                            ),
                              ],
                            ),   
              ),
              
            ),
            
        ),
    );
  }
}
