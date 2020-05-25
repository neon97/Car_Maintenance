import 'package:car_check/car.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25.0),
        height: height,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Color.fromRGBO(34, 34, 34, 1)],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: height / 2.5,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/car_logo.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: height / 30,
            ),
            Text(
              "Everything\nyour car needs",
              style: TextStyle(color: Colors.white, fontSize: height / 30),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height / 30,
            ),
            Text(
              "Keep track of your car and\npurchase anything you need\nin a single app",
              style: TextStyle(
                  color: Color.fromRGBO(146, 146, 146, 1),
                  fontSize: height / 50),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height / 20,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0)),
              padding: EdgeInsets.all(height / 40),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CarDetails()));
              },
              child: Text("Get Started",
                  style: TextStyle(
                    fontSize: height / 50,
                  )),
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
