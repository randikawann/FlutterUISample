import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

//page
import 'package:flutter_ui_sample/pages/inforscreen.dart';

class MyHeader extends StatelessWidget {

  final String image;
  final String texttop;
  final String textbottom;

  const MyHeader({
    Key key, this.image, this.texttop, this.textbottom,
  }) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 40.0, top: 50.0, right: 20.0),
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.topLeft,
            colors: [Color(0xFF3383CD), Color(0xFF11249F)],
          ),
          image: DecorationImage(
            image: AssetImage("assets/images/virus.png"),
          ),
        ),
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                    child: SvgPicture.asset("assets/icons/menu.svg"),
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context){return InfoScreen();},),);},
                ),
                ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  SvgPicture.asset(
                    "$image",
                    width: 230.0,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                  Positioned(
                    top: 20.0,
                    left: 150.0,
                    child: Text("$texttop \n$textbottom",
                        style: kHeadingTextStyle.copyWith(
                          color: Colors.white,
                        )),
                  ),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
