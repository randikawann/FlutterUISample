import 'package:flutter/material.dart';

//import library
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_sample/widgets/counter.dart';

//import widgets
import 'package:flutter_ui_sample/widgets/myheader.dart';
import '../constant.dart';




class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          MyHeader(image: "assets/icons/Drcorona.svg", texttop: "All you need", textbottom: "is stay at home." ,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            height: 60.0,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(
                  color: Color(0xFFE5e5e5),
                )),
            child: Row(
              children: <Widget>[
                SvgPicture.asset("assets/icons/maps-and-flags.svg"),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: DropdownButton(
                    isExpanded: true,
                    underline: SizedBox(),
                    icon: SvgPicture.asset("assets/icons/dropdown.svg"),
                    value: 'Sri Lanka',
                    items: [
                      'Sri Lanka',
                      'Indunisia',
                      'Bangaladesh',
                      'United State'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Case Update\n",
                          style: TextStyle(
                            color: kTitleTextColor,
                          ),
                        ),
                        TextSpan(
                          text: "Newest Update March 28\n",
                          style: TextStyle(
                            color: kTextLightColor,
                          ),
                        ),
                      ]),
                    ),
                    Spacer(),
                    Text(
                      "See Details",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 30.0,
                        color: kShadowColor,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Counter(
                        color: kInfectedColor,
                        number: 1023,
                        title: "Infacted",
                      ),
                      Counter(
                        color: kDeathColor,
                        number: 87,
                        title: "Death",
                      ),
                      Counter(
                        color: kRecovercolor,
                        number: 46,
                        title: "Recovered",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Spread of Virus",
                      style: kTitleTextstyle,
                    ),
                    Text(
                      "See Details",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  height: 178.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 30.0,
                        color: kShadowColor,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/map.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

