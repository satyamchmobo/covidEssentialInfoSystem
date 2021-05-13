import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PlasmaPlatformsScreen extends StatelessWidget {
  final List<Map> myProducts = [
    {"id": 'dhondh.com', "url": "https://dhoondh.com/"},
    {"id": 'NeedPlasma.com', "url": "https://needplasma.in/"},
    {"id": 'Plasmadonor', "url": "https://plasmadonor.in/"},
    {"id": 'plasma.com', "url": "https://www.plasma.com/"},
    {"id": 'plasmaline', "url": "https://plasmaline.in/"},
    {"id": 'coronacluster', "url": "https://coronaclusters.in/plasma/donate"},
    // {"id": 'zoom.com', "url": "https://zoom.us/"},
    // {"id": 'plasma.com', "url": "https://www.plasma.com/"},
  ];

  // List.generate(4, (index) => {"id": index, "name": "Product $index"})
  //     .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donate Plasma Save Lives!'),
        shadowColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(

                //size of cards
                maxCrossAxisExtent: 200,
                childAspectRatio: 2 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 30),
            itemCount: myProducts.length,
            itemBuilder: (BuildContext ctx, index) {
              return InkWell(
                onTap: () async {
                  if (await canLaunch(myProducts[index]["url"])) {
                    await launch(myProducts[index]["url"]);
                  } else {
                    throw 'Could Not Launch ${myProducts[index]["url"]}';
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(myProducts[index]["id"]),
                  decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(30)),
                ),
              );
            }),
      ),
    );
  }
}
