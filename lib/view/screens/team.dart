import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

class AboutUsPage extends StatefulWidget { 
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text("About us"),
        ),
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
          Column(
            children: [
              // CircularProfileAvatar(
              //   null,
              //   child: FlutterLogo(),
              //   borderColor: Colors.purpleAccent,
              //   borderWidth: 2,
              //   elevation: 5,
              //   radius: 50,
              // ),
              // CircularProfileAvatar(
              //   null,
              //   child: Icon(
              //     Icons.person,
              //     size: 140,
              //   ),
              //   borderColor: Colors.black,
              //   borderWidth: 3,
              //   elevation: 5,
              //   radius: 75,
              // ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Team",
                      style: TextStyle(color: Colors.yellow[800], fontSize: 50),
                    ),
                    SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset("images/cowicon.png")),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularProfileAvatar(
//                  'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4',
                        'https://firebasestorage.googleapis.com/v0/b/fightandwin-847ec.appspot.com/o/photo.jpeg?alt=media&token=46624f5d-ef9d-4f7d-9550-7c61e41d172f',
                        errorWidget: (context, url, error) => Container(
                          child: Icon(Icons.error),
                        ),
                        placeHolder: (context, url) => Container(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(),
                        ),
                        radius: 90,
                        borderColor: Colors.yellow[800],
                        backgroundColor: Colors.transparent,
                        borderWidth: 3,

//                  initialsText: Text(
//                    "AD",
//                    style: TextStyle(fontSize: 40, color: Colors.white),
//                  ),
                        // borderColor: Colors.red,
                        elevation: 5.0,
                        onTap: () {
                          print('adil');
                        },
                        cacheImage: true,
                        showInitialTextAbovePicture: false,
                      ),
                    ),
                    Text(
                      "Satyam Chourasia",
                      style: TextStyle(fontSize: 20, color: Colors.red[900]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Software Developer"),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularProfileAvatar(
//                  'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4',
                        'https://firebasestorage.googleapis.com/v0/b/fightandwin-847ec.appspot.com/o/IMG_20210201_161941%20(2).jpg?alt=media&token=2cfec6da-153c-458d-a59b-3af36eae5b18',
                        errorWidget: (context, url, error) => Container(
                          child: Icon(Icons.error),
                        ),
                        placeHolder: (context, url) => Container(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(),
                        ),
                        radius: 90,
                        borderColor: Colors.yellow[800],
                        backgroundColor: Colors.transparent,
                        borderWidth: 3,

//                  initialsText: Text(
//                    "AD",
//                    style: TextStyle(fontSize: 40, color: Colors.white),
//                  ),
                        // borderColor: Colors.red,
                        elevation: 5.0,
                        onTap: () {
                          print('adil');
                        },
                        cacheImage: true,
                        showInitialTextAbovePicture: false,
                      ),
                    ),
                    Text(
                      "Dnyaneshwar Wakshe",
                      style: TextStyle(fontSize: 20, color: Colors.red[900]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Software Developer"),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularProfileAvatar(
//                  'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4',
                        'https://firebasestorage.googleapis.com/v0/b/fightandwin-847ec.appspot.com/o/IMG_20210516_204851.jpg?alt=media&token=ac1fba4b-7666-4de4-a109-ca06af8e6686',
                        errorWidget: (context, url, error) => Container(
                          child: Icon(Icons.error),
                        ),
                        placeHolder: (context, url) => Container(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(),
                        ),
                        radius: 90,
                        borderColor: Colors.yellow[800],
                        backgroundColor: Colors.transparent,
                        borderWidth: 3,

//                  initialsText: Text(
//                    "AD",
//                    style: TextStyle(fontSize: 40, color: Colors.white),
//                  ),
                        // borderColor: Colors.red,
                        elevation: 5.0,
                        onTap: () {
                          print('dfd');
                        },
                        cacheImage: true,
                        showInitialTextAbovePicture: false,
                      ),
                    ),
                    Text(
                      "Abrar Aslam",
                      style: TextStyle(fontSize: 20, color: Colors.red[900]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Software Developer"),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularProfileAvatar(
//                  'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4',
                        'https://firebasestorage.googleapis.com/v0/b/fightandwin-847ec.appspot.com/o/NVUU6421.JPEG?alt=media&token=887fc2d5-2dc3-46e7-a12f-8b59d48346d2',
                        errorWidget: (context, url, error) => Container(
                          child: Icon(Icons.error),
                        ),
                        placeHolder: (context, url) => Container(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(),
                        ),
                        radius: 90,
                        borderColor: Colors.yellow[800],
                        backgroundColor: Colors.transparent,
                        borderWidth: 3,

//                  initialsText: Text(
//                    "AD",
//                    style: TextStyle(fontSize: 40, color: Colors.white),
//                  ),
                        // borderColor: Colors.red,
                        elevation: 5.0,
                        onTap: () {
                          print('adil');
                        },
                        cacheImage: true,
                        showInitialTextAbovePicture: false,
                      ),
                    ),
                    Text(
                      "Aarush Babbar",
                      style: TextStyle(fontSize: 20, color: Colors.red[900]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Software developer"),
                    ),
                  ],
                ),
              ),

    
            ],
          ),
        ],
      ),
    );
  }
}


