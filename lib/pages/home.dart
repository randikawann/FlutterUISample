import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  Widget get topImage => Container(
    height: 250.0,
    color: Colors.grey,
    child: Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Image.asset("assets/shoe1.png"),
      ),
    ),
  );
  Widget get middleContent => Expanded(
    child: Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Rating", style: TextStyle(
                  color: Colors.blueGrey, fontSize: 16.0
                ),),
                Row(
                  children: <Widget>[
                    SizedBox(width: 10.0,),
                    Icon(Icons.star, color: Colors.yellow,),
                    SizedBox(width: 7.0,),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(text: '4.5',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 13.0)),
                          WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(2, -4),
                                child: Text('(378 People)',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                      color: Colors.white),),
                              ))
                        ]))
                  ],
                ),
              ],
            )
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Product Description", style: TextStyle(
                    color: Colors.blueGrey, fontSize: 16.0
                ),),
                Text("Get maximum support, comfort and a refreshed look with these adidas Energy Cloud more...")
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Size", style: TextStyle(
                        color: Colors.blueGrey, fontSize: 16.0
                    ),),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 10),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          child: RaisedButton(
                            child: Text("7", style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        SizedBox(width: 7),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          child: RaisedButton(
                            child: Text("8", style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        SizedBox(width: 7),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          child: RaisedButton(
                            child: Text("9", style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        SizedBox(width: 7),
                        Container(
                          width: 48.0,
                          height: 40.0,
                          child: RaisedButton(
                            child: Text("10", style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(width: 10.0,),
                Container(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Quantity", style: TextStyle(
                          color: Colors.blueGrey, fontSize: 16.0
                      ),),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 40.0,
                            height: 40.0,
                            child: RaisedButton(
                              child: Text("-", style: TextStyle(color: Colors.white),),
                            ),
                          ),
                          Container(
                            width: 40.0,
                            height: 40.0,
                            child: RaisedButton(
                              child: Text("1", style: TextStyle(color: Colors.white),),
                            ),
                          ),
                          Container(
                            width: 40.0,
                            height: 40.0,
                            child: RaisedButton(
                              child: Text("+", style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Select Color", style: TextStyle(
                    color: Colors.blueGrey, fontSize: 16.0,
                ),),
                Row(
                  children: <Widget>[
                    Container(margin: EdgeInsets.only(right: 5.0),width: 41.0, height: 41.0, color: Colors.red,),
                    Container(margin: EdgeInsets.only(right: 5.0),width: 41.0, height: 41.0, color: Colors.blue,),
                    Container(margin: EdgeInsets.only(right: 5.0),width: 41.0, height: 41.0, color: Colors.amber,),
                    Container(margin: EdgeInsets.only(right: 5.0),width: 41.0, height: 41.0, color: Colors.lightBlueAccent,),
                    Container(margin: EdgeInsets.only(right: 5.0),width: 41.0, height: 41.0, color: Colors.greenAccent,),
                    Container(margin: EdgeInsets.only(right: 5.0),width: 41.0, height: 41.0, color: Colors.brown,),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Select Color", style: TextStyle(
                  color: Colors.blueGrey, fontSize: 16.0,
                ),),
                Text("\$80", style: TextStyle(
                  color: Colors.white, fontSize: 24.0,
                ),),
              ],
            ),
          )
        ],
      ),
    ),
  );
  Widget get bottomBar => Container(
    height: 100.0,
    color: Colors.grey,
    child: Center(
      child: RaisedButton(
          onPressed: (){},
        child: Text("Add To Cart"),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Energy Cloud"),
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.arrow_back_ios),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 10.0),
                child: Icon(Icons.favorite_border)
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              topImage,
              middleContent,
              bottomBar
              //description
              //bottom add cart
            ],
          ),
        ),
      ),
    );
  }
}
