import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CarDetails extends StatefulWidget {
  @override
  _CarDetailsState createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Color.fromRGBO(34, 34, 34, 1)],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 25.0, left: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Your current car",
                          style: TextStyle(
                              color: Color.fromRGBO(112, 112, 112, 1),
                              fontSize: height / 45),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Tesla Model 3",
                          style: TextStyle(
                              color: Colors.white, fontSize: height / 32),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                    size: height / 25,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.0, right: 40.0),
              child: Container(
                height: height / 4,
                width: width,
                decoration: BoxDecoration(
                    // color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage("assets/images/tesla.png"),
                        fit: BoxFit.contain)),
              ),
            ),
            //you can use container or else expanded to put the listview
            Container(
              height: height / 4,
              width: width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  testab(Icon(Feather.battery, color: Colors.white), "Battery",
                      "71%", (height / 4) / 5, "210 mi left", true),
                  testab(Icon(Feather.zap, color: Colors.white), "Mileage",
                      "10345 mi", (height / 4) / 9, "+ 23 min today", true),
                  testab(
                      Icon(MaterialCommunityIcons.oil_temperature,
                          color: Colors.white),
                      "Temperature",
                      "39%",
                      (height / 4) / 5,
                      "Choke free",
                      true),
                ],
              ),
            ),
            SizedBox(
              height: height / 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                "Suggested Ports",
                style: TextStyle(
                    color: Color.fromRGBO(115, 115, 115, 1),
                    fontSize: height / 50),
              ),
            ),
            SizedBox(
              height: height / 30,
            ),
            Container(
              height: height / 7,
              width: width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  parts("assets/images/charger.png","Fast Charger","499"),
                  parts("assets/images/tires.png","Tires","199")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget testab(Icon icons, String iconname, String details,
      double detailsheigth, String detaildata, bool see) {
    double height = MediaQuery.of(context).size.height / 4;
    double width = MediaQuery.of(context).size.width / 3;
    return Padding(
      padding: EdgeInsets.only(left: 30.0),
      child: Container(
        //lets gove the container a graditn color
        padding: EdgeInsets.all(height / 15),
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              15.0,
            ),
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(20, 20, 20, 1),
                  Color.fromRGBO(34, 34, 34, 1)
                ],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            icons,
            SizedBox(
              height: 2.0,
            ),
            Text(
              iconname,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: height / 15,
            ),
            Text(
              details,
              style: TextStyle(fontSize: detailsheigth, color: Colors.white),
            ),
            Text(
              detaildata,
              style: TextStyle(color: Color.fromRGBO(112, 112, 112, 1)),
            ),
            SizedBox(
              height: height / 5,
            ),
            // Text(
            //   see == true ? "See all" : "",
            //   style: TextStyle(color: Color.fromRGBO(112, 112, 112, 1)),
            // ),
          ],
        ),
      ),
    );
  }

  //if this happes just restart your applcation
  //i am too restarting
  //now th upper part being done lets move to the lower one now
  //lets copy the gradient pattern from the upper one

  Widget parts(String image, String product, String cost) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 30.0),
      child: Container(
        height: height / 7,
        width: width / 1.8,

        //we need to have the container to attch the image so we will be using stack
        child: Stack(
          children: <Widget>[
            //will be using stack then positioned the elements
            //container to the right side an dimage to the left side
            //let place the iamge and check

            Positioned(
                right: 0.0,
                child: Container(
                    padding: EdgeInsets.only(
                        top: (height / 7) / 6,
                        left: (width / 2.2) / 5,
                        right: (width / 2.2) / 10),
                    height: height / 7,
                    width: width / 2.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(20, 20, 20, 1),
                              Color.fromRGBO(34, 34, 34, 1)
                            ],
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Tesla",
                          style: TextStyle(
                              color: Color.fromRGBO(112, 112, 112, 1)),
                        ),
                        Text(
                          "Fast Chrger",
                          style: TextStyle(
                              color: Colors.white, fontSize: height / 40),
                        ),
                        SizedBox(
                          height: height / 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("\$$cost",
                                style: TextStyle(color: Colors.white)),
                            Row(
                              children: <Widget>[
                                Icon(
                                  MaterialCommunityIcons.truck_delivery,
                                  color: Colors.white,
                                  size: height / 60,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  product,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: height / 80),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ))),
            Positioned(
              top: (height / 7) / 6,
              left: 0.0,
              child: Container(
                height: height / 10,
                width: width / 6,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//lets start working on the upper one first
//done with adjusting the image now let swork on teh content of the tab
//now its ready but we need to have the parameters so that the evert widget is different as fast chrger and the tesla tires
//now its done and looks perfectly fine
//if you like the design follow michael and us on the instagram and 
//dont forget to like the repo and this video 
// if you love the content 
//Thankyou
//Stay safe Stay at home Stay healthy


