// import 'package:flutter/material.dart';
// import 'package:covidessen/main.dart';
// import 'package:covidessen/fintness_app_theme.dart';
import 'package:google_fonts/google_fonts.dart';

// class Disclaimer_page extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SingleChildScrollView(
//           physics: BouncingScrollPhysics(),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   width: double.infinity,
//                   height: 200,
//                   child: Stack(
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.only(
//                             top: 0, left: 0, right: 0, bottom: 6),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             boxShadow: <BoxShadow>[
//                               BoxShadow(
//                                   color: HexColor("#717D7E").withOpacity(0.6),
//                                   offset: const Offset(1.1, 4.0),
//                                   blurRadius: 8.0),
//                             ],
//                             gradient: LinearGradient(
//                               colors: <HexColor>[
//                                 HexColor(
//                                     "#ffcd36"), //add color to start of header
//                                 HexColor(
//                                     "##ffe28a"), // add color to left endof header
//                               ],
//                               begin: Alignment.topLeft,
//                               end: Alignment.bottomRight,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               bottomRight: Radius.circular(30.0),
//                               bottomLeft: Radius.circular(30.0),
//                               topLeft: Radius.circular(0.0),
//                               topRight: Radius.circular(0.0),
//                             ),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.only(
//                                 top: 54, left: 10, right: 0, bottom: 8),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 Text(
//                                   //mealsListData.titleTxt,
//                                   "Twitter Feed Help",
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                     fontFamily: FitnessAppTheme.fontName,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 20,
//                                     letterSpacing: 0.2,
//                                     color: FitnessAppTheme.white,
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(
//                                         top: 16,
//                                         bottom: 16,
//                                         left: 16,
//                                         right: 16),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: <Widget>[
//                                         Text(
//                                           //mealsListData.meals.join('\n')
//                                           "Search by name of your city or state",
//                                           style: TextStyle(
//                                             fontFamily:
//                                                 FitnessAppTheme.fontName,
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 14,
//                                             letterSpacing: 0.2,
//                                             color: FitnessAppTheme.white,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: -8,
//                         //left: 0,
//                         right: -6,
//                         child: Hero(
//                           tag: 'pngIconHero',
//                           child: Container(
//                             width: 120,
//                             height: 120,
//                             decoration: BoxDecoration(
//                               color:
//                                   FitnessAppTheme.nearlyWhite.withOpacity(0.2),
//                               shape: BoxShape.circle,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 11,
//                         right: 16,
//                         child: SizedBox(
//                           width: 90,
//                           height: 90,
//                           child: Image.asset("assets/warning-sign.png"),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            "About Fight&Win",
            style: GoogleFonts.poppins(
              fontSize: 26,
              fontWeight: FontWeight.w500,
              color: Color(0xFF3E5061),
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: Colors.yellow[900],
        //   ),
        //   onPressed: () {},
        // ),
        actions: [
          // IconButton(
          //   icon: Icon(
          //     Icons.settings,
          //     color: Colors.yellow[800],
          //   ),
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          // ),
        ],
      ),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Container(
                padding: const EdgeInsets.all(16.0),
                child: new Column(
                  children: <Widget>[
                    new Text(
                        "Disclaimer:Fight & Win does not warrant the functions contained in the program will meet your requirements or that the operation of the program will be uninterrupted or error-free. We are not reading user any kind of user data and personal information for further use.IN NO EVENT, UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING, SHALL WSDOT, OR ANY PERSON BE LIABLE FOR ANY LOSS, EXPENSE OR DAMAGE, OF ANY TYPE OR NATURE ARISING OUT OF THE USE OF, OR INABILITY TO USE THIS SOFTWARE OR PROGRAM, INCLUDING, BUT NOT LIMITED TO, CLAIMS, SUITS OR CAUSES OF ACTION INVOLVING ALLEGED INFRINGEMENT OF COPYRIGHTS, PATENTS, TRADEMARKS, TRADE SECRETS, OR UNFAIR COMPETITION.",
                        textAlign: TextAlign.justify),
                    // SizedBox(
                    //   height: 13,
                    // ),
                    // new Text(
                    //     "As part of the registration process on the Site, KSFF Pvt. Ltd. may collect the following personally identifiable information about you: Name including first and last name, alternate email address, mobile phone number and contact details, Postal code, Demographic profile (like your age, gender, occupation, education, address etc.) and information about the pages on the site you visit/access, the links you click on the site, the number of times you access the page and any such browsing information.",
                    //     textAlign: TextAlign.justify),
                    // SizedBox(
                    //   height: 13,
                    // ),
                    // new Text(
                    //     "KSFF Pvt. Ltd. will collect personally identifiable information about you only as part of a voluntary registration process, on-line survey or any combination thereof. The Site may contain links to other Websites. KSFF Pvt. Ltd. is not responsible for the privacy practices of such Web sites which it does not own, manage or control. The Site and third-party vendors, including Google, use first-party cookies (such as the Google Analytics cookies) and third-party cookies (such as the DoubleClick cookie) together to inform, optimize, and serve ads based on someone’s past visits to the Site.",
                    //     textAlign: TextAlign.justify),
                    // SizedBox(
                    //   height: 13,
                    // ),
                    // new Text(
                    //     "KSFF Pvt. Ltd. will use your personal information to provide personalized features to you on the Site and to provide for promotional offers to you through the Site and other channels. BDPL will also provide this information to its business associates and partners to get in touch with you when necessary to provide the services requested by you. KSFF Pvt. Ltd. will use this information to preserve transaction history as governed by existing law or policy. BDPL may also use the contact information internally to direct its efforts for product improvement, to contact you as a survey respondent, to notify you if you win any contest; and to send you promotional materials from its contest sponsors or advertisers. KSFF Pvt. Ltd. will also use this information to serve various promotional and advertising materials to you via display advertisements through the Google Ad network on third party websites. You can opt out of Google Analytics for Display Advertising and customize Google Display network ads using the Ads Preferences Manager. Information about Customers on an aggregate (excluding any information that may identify you specifically) covering Customer transaction data and Customer demographic and location data may be provided to partners of BDPL for the purpose of creating additional features on the website, creating appropriate merchandising or creating new products and services and conducting marketing research and statistical analysis of customer behavior and transactions.",
                    //     textAlign: TextAlign.justify),
                    // SizedBox(
                    //   height: 13,
                    // ),
                    // new Text(
                    //     "KSFF Pvt. Ltd. will not use your financial information for any purpose other than to complete a transaction with you. KSFF Pvt. Ltd. does not rent, sell or share your personal information and will not disclose any of your personally identifiable information to third parties. In cases where it has your permission to provide products or services you’ve requested and such information is necessary to provide these products or services the information may be shared with KSFF Pvt. Ltd. business associates and partners. KSFF Pvt. Ltd. may, however, share consumer information on an aggregate with its partners or third parties where it deems necessary. In addition KSFF Pvt. Ltd. may use this information for promotional offers, to help investigate, prevent or take action regarding unlawful and illegal activities, suspected fraud, potential threat to the safety or security of any person, violations of the Site’s terms of use or to defend against legal claims; special circumstances such as compliance with subpoenas, court orders, requests/order from legal authorities or law enforcement agencies requiring such disclosure.",
                    //     textAlign: TextAlign.justify),
                    // SizedBox(
                    //   height: 13,
                    // ),
                    // new Text(
                    //     "Kim Shin Fine Foods Pvt. Ltd.  is the licensed owner of the brand Yonsei Dairy India and the website www.yonseidairy.in (”The Site”). KSFF Pvt. Ltd. respects your privacy. This Privacy Policy provides succinctly the manner your data is collected and used by KSFF Pvt. Ltd. on the Site. As a visitor to the Site/ Customer you are advised to please read the Privacy Policy carefully. By accessing the services provided by the Site you agree to the collection and use of your data by KSFF Pvt. Ltd. in the manner provided in this Privacy Policy.",
                    //     textAlign: TextAlign.justify),
                    // SizedBox(
                    //   height: 13,
                    // ),
                    // new Text(
                    //     "To correct or update any information you have provided, the Site allows you to do it online. In the event of loss of access details you can send an email to: kimshinfinefoods@gmail.com",
                    //     textAlign: TextAlign.justify),
                    // SizedBox(
                    //   height: 13,
                    // ),
                    // new Text(
                    //     "KSFF Pvt. Ltd. reserves the right to change or update this policy at any time. Such changes shall be effective immediately upon posting to the Site.",
                    //     textAlign: TextAlign.justify),
                    // SizedBox(
                    //   height: 13,
                    // ),
                    // new Text("Grievance Officer",
                    //     style: TextStyle(
                    //         fontWeight: FontWeight.bold, color: Colors.black),
                    //     textAlign: TextAlign.justify),
                    // SizedBox(
                    //   height: 13,
                    // ),
                  
                    SizedBox(
                      height: 13,
                    ),
                    
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     new Text("Name: Yogesh Sharma",
                    //         textAlign: TextAlign.justify),

                    //     new Text(
                    //         "Address: D-78 Vipul World Sector-48, Sohna Road Gurgaon, Haryana-122001",
                    //         textAlign: TextAlign.left),
                    //     //  SizedBox(height: 3,),

                    //     new Text("Phone No: +91-9971177306",
                    //         textAlign: TextAlign.justify),

                    //     new Text("E-mail: kimshinfinefoods@gmail.comr",
                    //         textAlign: TextAlign.justify),
                    //     SizedBox(
                    //       height: 13,
                    //     ),

                
                    //     SizedBox(
                    //       height: 13,
                    //     ),
                    //   ],
                    // )

                  ],
                ),
              )))
        ],
      ),
    );
  }
}
