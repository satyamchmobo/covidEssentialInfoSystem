import 'package:covidessen/main.dart';
import 'package:covidessen/view/screens/dashboard/dashboard.dart';
import 'package:covidessen/view/screens/disclaimer.dart';
import 'package:covidessen/view/screens/team.dart';
import 'package:covidessen/view/screens/user_cards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavPage extends StatefulWidget {
  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int selectedIndex = 0;

  List<Widget>  pages = [
    Dashboard(),
    UserCards(),
    AboutUsPage(),
    Privacy(),
  ];

//onwillpop()
  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Do you really want to exit the app?"),
              // ignore: deprecated_member_use
              actions: <Widget>[
                FlatButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: Text("NO"),
                ),
                FlatButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: Text("Yes"),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        body: getBody(),
        bottomNavigationBar: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (_) => Disclaimer_page()));
            },
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 7, top: 10),
                  child: Container(
                    height: 21,
                    width: 30,
                    child: Image.asset("assets/home-web-button-outline.png"),
                  ),
                ),
                title: Text(
                  "Home",
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3E5061)),
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 7, top: 10),
                  child: Container(
                    height: 21,
                    width: 30,
                    child: Image.asset("assets/home-web-button-outline.png"),
                  ),
                ),
                title: Text(
                  "Dose Feeds",
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3E5061)),
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 7, top: 10),
                  child: Container(
                    height: 21,
                    width: 30,
                    child: Image.asset(
                      "assets/group.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                title: Text(
                  "Team",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFF0270)),
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 7, top: 10),
                  child: Container(
                    height: 21,
                    width: 30,
                    child: Image.asset(
                      "assets/information.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                title: Text(
                  "Disclaimer",
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3E5061)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    return pages.elementAt(selectedIndex);
  }
}
