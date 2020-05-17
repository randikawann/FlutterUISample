import 'package:flutter/material.dart';

import '../constant.dart';
import 'package:flutter_ui_sample/widgets/myheader.dart';

  //THank ou for watching...
  // this demo application is already finished/...
  // Please subscribe my youtube channel...
class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyHeader(
              image: "assets/icons/coronadr.svg",
              texttop: "Get to know",
              textbottom: "About Covid-19",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Symptoms",
                    style: kTitleTextstyle,
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SymptomCard(
                        image: "assets/images/headache.png",
                        title: "Headache",
                        isActive: true,
                      ),
                      SymptomCard(
                        image: "assets/images/caugh.png",
                        title: "Caugh",
                        isActive: false,
                      ),
                      SymptomCard(
                        image: "assets/images/fever.png",
                        title: "fever",
                        isActive: false,
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Prevent", style: kTitleTextstyle,),
                  SizedBox(height: 20),
                  PreventCard(
                    image: "assets/images/wear_mask.png",
                    text: "Since the start of the coronavirus outbreak some places have fully embraced waring faacemarks",
                    title: "Wear face mask",
                  ),
                  PreventCard(
                    image: "assets/images/wash_hands.png",
                    text: "Since the start of the coronavirus outbreak some places have fully embraced waring faacemarks",
                    title: "WashHands",
                  ),
                  SizedBox(height: 20.0,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PreventCard extends StatelessWidget {

  final String image;
  final String title;
  final String text;

  const PreventCard({
    Key key, this.image, this.title, this.text,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment:  Alignment.centerLeft,
          children: <Widget>[
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 8),
                      blurRadius: 24,
                      color: kShadowColor,

                    )]
              ),
            ),
            Image.asset(image),
            Positioned(
              left: 130,
              child: Container(
                height: 136,
                width: MediaQuery.of(context).size.width - 170.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title, style: kTitleTextstyle.copyWith(fontSize: 16.0),),
                    Text(text,
                      style: TextStyle(
                        fontSize: 12,
                      ),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class SymptomCard extends StatelessWidget {

  final String image;
  final String title;
  final bool isActive;

  const SymptomCard({
    Key key, this.image, this.title, this.isActive,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.white,
          boxShadow: [
            isActive ?
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 20,
              color: kActiveShadowColor,
            )
                : BoxShadow(offset: Offset(0,3), blurRadius: 6, color: kShadowColor)
          ]
      ),
      child: Column(
        children: <Widget>[
          Image.asset(image, height: 90,),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
