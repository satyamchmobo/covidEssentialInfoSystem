

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:india_beats_covid/core/mock/mock_data.dart';
// import 'package:india_beats_covid/utils/constants.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

//import '../../pkgs.dart';

// class TwitterScreen extends StatelessWidget {
//   final ValueNotifier<String> keyword = ValueNotifier<String>("");

//   @override
//   Widget build(BuildContext context) {
//     // final Store store = VxState.store;
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
        
//         ValueListenableBuilder(
//           valueListenable: keyword,
//           builder: (context, value, child) {
//             return [
//               Autocomplete<String>(
//                 displayStringForOption: (option) => option,
//                 fieldViewBuilder: (context, textEditingController, focusNode,
//                         onFieldSubmitted) =>
//                     TextField(
//                   controller: textEditingController,
//                   focusNode: focusNode,
//                   // onEditingComplete: onFieldSubmitted,
//                   decoration: const InputDecoration(
//                       border: OutlineInputBorder(), hintText: "Delhi"),
//                 ),
//                 optionsBuilder: (textEditingValue) {
//                   if (textEditingValue.text == '') {
//                     return [];
//                   }
//                   // return cities.where((String option) {
//                   //   return option
//                   //       .toLowerCase()
//                   //       .contains(textEditingValue.text.toLowerCase());
//                   // });
//                 },
//                 onSelected: (String selection) {
//                   keyword.value = selection;
//                 },),
//               // ).p32(),
//               Link(
//                 target: LinkTarget.blank,
//                 uri: Uri.parse(
//                     "https://twitter.com/search?q=verified+${keyword.value}+(bed+OR+beds+OR+icu+OR+oxygen+OR+ventilator+OR+ventilators+OR+fabiflu)+-%22not+verified%22+-%22unverified%22+-%22needed%22+-%22required%22&f=live"),
//                 builder: (context, followLink) => ElevatedButton(
//                   onPressed: followLink,
//                   //child: Constants.findOnTwitter.text.make(),
//                 ),
//               )
//             ];
//           },
//         ),
//       ],
//     );
//   }
// }

class TwitterScreen extends StatelessWidget {
   TextEditingController city = TextEditingController();

  _launchURL(String city) async{
    print( city);
             
        // const url = Uri.parse(
        // "https://twitter.com/search?q=verified+${keyword.value}+(bed+OR+beds+OR+icu+OR+oxygen+OR+ventilator+OR+ventilators+OR+fabiflu)+-%22not+verified%22+-%22unverified%22+-%22needed%22+-%22required%22&f=live"),
                
    String url = "https://twitter.com/search?q=verified+${city}+(bed+OR+beds+OR+icu+OR+oxygen+OR+ventilator+OR+ventilators+OR+fabiflu)+-%22not+verified%22+-%22unverified%22+-%22needed%22+-%22required%22&f=live";
  await launch(url);
  // if (await canLaunch(url)) {
  //   await launch(url);
  // } else {
  //   throw 'Could not launch $url';
  // }

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: 
        AppBar(
              title: Text(
                "Fight&Win",
                style: GoogleFonts.poppins(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
              ),
           ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                TextField(
                  decoration: InputDecoration(  
                    hintText: "Delhi",
                    border: OutlineInputBorder(),
                  ),
                  controller: city,
                  
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () async {
                       _launchURL(city.text);
                    },
                    child:
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Text("Search"),
                     ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                     ),
                ),
              ],
            ),
          ),
        ),

      

      
    );
  }
}