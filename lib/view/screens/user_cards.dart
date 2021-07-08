import 'package:flutter/material.dart';

class UserCards extends StatefulWidget {
  @override
  _UserCardsState createState() => _UserCardsState();
}

class _UserCardsState extends State<UserCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // In this I want to build list view by calling
      body: new ListViewBuilder(),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  // from this list data have to fatch
  List<Map> products = [
    {
      "id": "01",
      "name": "dnyaneshwar wakshe ",
      "postCaption": "felt fatigue for 24 hours",
      "postDetail": "Got My dose 1"
    },
    {
      "id": "02",
      "name": "Aarush Babbar",
      "postCaption": "Got fever,with mild cold",
      "postDetail": "Got My dose 2"
    },
    {
      "id": "03",
      "name": "Abrar Alsam",
      "postCaption": "felt itching in whole body",
      "postDetail": "Got My dose 2"
    },
    {
      "id": "04",
      "name": "Satyam Chaurasiya",
      "postCaption": "felt nothing specific after vaccination",
      "postDetail": "Got My dose 3"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //====================== List View is here ===========================
      // body: Container(
      //   child: ListView.separated(        // To add separation line between the ListView
      //         separatorBuilder: (context, index) => Divider(
      //           color: Colors.grey
      //         ),

      //           itemCount: products.length,
      //           itemBuilder: (BuildContext context, int index){
      //           return ListTile(
      //             leading: Icon(Icons.person),
      //             trailing: Text(products[index]["id"]),
      //             title: Text(products[index]["name"]),
      //           );
      //         },
      //     ),
      //  ),

      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.amber,
                          child: Text("D"),
                          radius: 25,
                        ),
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    //========= Owner name ======
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0, right: 8.0, left: 8.0),
                                      child: Text(
                                        products[index]["name"],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    // ======== subtitle ======
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Got COVID-SHEILD vaccine",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 70.0),
                                  child: IconButton(
                                    alignment: Alignment.centerRight,
                                    onPressed: () {},
                                    icon: Icon(Icons.more_vert),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //========== post caption ======
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          products[index]["postCaption"],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // for single post sigle image asset view and for multiple photos carousel should  used

                  Image(
                    image: AssetImage('assets/health-at-work.jpg'),
                  ),

                  // post details
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "This is post detaiils ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Invest button
                  FlatButton(
                    color: Colors.greenAccent,
                    shape: StadiumBorder(),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Invest()),);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30.0, left: 30.0),
                      child: Text("I have same Symptoms "),
                    ),
                  ),

                  // ================= like comment and share ===============
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.thumb_up_alt_outlined),
                        Text("100"),
                        Icon(Icons.comment_outlined),
                        Text("100"),
                        Icon(Icons.share_sharp),
                        Text("10000"),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
