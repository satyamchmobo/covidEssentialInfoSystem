import 'package:covidessen/model/quickCardsmodel.dart';
import 'package:covidessen/view/screens/BottomNavBar/bottomNav.dart';
import 'package:covidessen/view/screens/Login.dart';
import 'package:covidessen/view/screens/about.dart';
import 'package:covidessen/view/screens/helpline.dart';
import 'package:covidessen/view/screens/icmrlabs.dart';
import 'package:covidessen/view/screens/plasma.dart';
import 'package:covidessen/view/screens/setting.dart';
import 'package:covidessen/view/screens/stateweb.dart';
import 'package:covidessen/view/screens/twitter_screen.dart';
import 'package:covidessen/view/screens/twittercard.dart';

// import 'package:covidessen/view/screens/plasma.dart';
import 'package:covidessen/view/screens/vaccineRegis.dart';
import 'package:covidessen/view/screens/whatsapp.dart';

import 'package:covidessen/view/widgets/dashboardWidgets/HelpCard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:covidessen/fintness_app_theme.dart';
import 'package:covidessen/theme/text_styles.dart';
import 'package:covidessen/theme/extention.dart';
import 'package:covidessen/theme/theme.dart';
import 'package:covidessen/theme/light_color.dart';
import 'package:firebase_core/firebase_core.dart';

// import 'package:covidessen/model/custom_switch.dart';
// import 'package:zealth_symptomapp/view/severty.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  FirebaseAuth auth = FirebaseAuth.instance;
  // This widget is the root of your application.
  Color notif_color = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: auth.currentUser != null ? BottomNavPage() : Login(),
    );
  }
}
