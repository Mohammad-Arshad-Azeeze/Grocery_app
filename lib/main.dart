import 'dart:async';

import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Figma clone',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Secondpage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Container(
              height: 226,
              width: 176,
              child: Image.asset(
                'assets/splash/splash.png',
                //fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}

class Secondpage extends StatefulWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  final PageController controller=PageController();
  int _currentindex=0;
  String next="Next";

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget> [
             Container(
               height:650,
               child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: controller,
                    onPageChanged: (index) {
            setState(() {
            _currentindex = index;
            if(index<2){
              next="Next";
            }else{
              next="Go";
            }
            });
            },

                    children: [
                      P1(),
                      P2(),
                      P3(),
                    ],
                  ),
             ),

            SmoothPageIndicator(
              controller: controller,
              count:  3,
              axisDirection: Axis.horizontal,
              effect:  WormEffect(
                  spacing:  8.0,
                  radius:  8,
                  // dotWidth:  20.0,
                  // dotHeight:  15.0,
                  paintStyle:  PaintingStyle.stroke,
                  strokeWidth:  0,
                  dotColor:  Colors.grey,
                  activeDotColor:  Colors.green,
              ),
            ),
            Container(
              height: 170,
              child: Stack(
                children: [
                  Positioned(
                    top:100,
                    right: 120,
                    left: 120,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:  BorderRadius.circular(30.0),
                            ),
                            backgroundColor: Colors.green,
                            textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),

                        onPressed: (){
                    setState(() {
                      if(_currentindex<2){
                        _currentindex=_currentindex+1;
                        controller.animateToPage((controller.page?.toInt())! + 1,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn
                        );
                      }else{
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Login()),
                                (Route<dynamic> route) => false);
                      }

                      if(_currentindex==2){
                        next="Go";
                      }
                    });
                  },
                        child: Text("$next")),)
                ],
              ),
            )
          ]
        ),
    ),
    );
  }
}
class P1 extends StatelessWidget {
  const P1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 600,
        child: Stack(
          children: [
            Positioned(
                top: -116,
                left: -75,
                right: -75,
                child: SizedBox(
                    height: 524,
                    width: 524,
                    child: Image.asset('assets/image/sndpage.png'))),
            Positioned(
                top: 456,
                left: 0,
                right: 0,
                child: Text("Shop for your daily needs",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ))),
            Positioned(
              top: 496,
              left: 0,
              right: 0,
              child: Text(
                "Set your delivery location. Choose your groceries from a wide range of our required products",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Positioned(
              top: 618,
              left: 0,
              right: 0,
              child: AvatarView(
                radius: 5,
                backgroundColor: Colors.red,
              ),
            ),
            Positioned(
                top: 709,
                left: 0,
                right: 0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        //to set border radius to button
                          borderRadius: BorderRadius.circular(30)),
                      padding: EdgeInsets.all(20) //content padding inside button
                  ),
                  onPressed: () {},
                  child: Text("Next"),
                )),
          ],
        ),
      ),
    );
  }
}
class P2 extends StatelessWidget {
  const P2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 600,
        child: Stack(
          children: [
            Positioned(
                top: -116,
                left: -75,
                right: -75,
                child: SizedBox(
                    height: 524,
                    width: 524,
                    child: Image.asset('assets/image/thirdpg.png'))),
            Positioned(
                top: 456,
                left: 0,
                right: 0,
                child: Text("Real Time Reporting",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ))),
            Positioned(
              top: 496,
              left: 0,
              right: 0,
              child: Text(
                "Keeping track of real-time delivery location",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Positioned(
              top: 618,
              left: 0,
              right: 0,
              child: AvatarView(
                radius: 5,
                backgroundColor: Colors.red,
              ),
            ),
            Positioned(
                top: 719,
                left: 0,
                right: 0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        //to set border radius to button
                          borderRadius: BorderRadius.circular(30)),
                      padding: EdgeInsets.all(20) //content padding inside button
                  ),
                  onPressed: () {},
                  child: Text("Next"),
                )),
          ],
        ),
      ),
    );
  }
}
class P3 extends StatelessWidget {
  const P3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 600,
        child: Stack(
          children: [
            Positioned(
                top: -116,
                left: -75,
                right: -75,
                child: SizedBox(
                    height: 524,
                    width: 524,
                    child: Image.asset('assets/image/fourthpg.png'))),
            Positioned(
                top: 456,
                left: 0,
                right: 0,
                child: Text("Fast Doorstep Delivery",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ))),
            Positioned(
              top: 496,
              left: 0,
              right: 0,
              child: Text(
                "Our delivery executive will deliver your order under 24 hours",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Positioned(
              top: 618,
              left: 0,
              right: 0,
              child: AvatarView(
                radius: 5,
                backgroundColor: Colors.red,
              ),
            ),
            Positioned(
                top: 719,
                left: 0,
                right: 0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        //to set border radius to button
                          borderRadius: BorderRadius.circular(30)),
                      padding: EdgeInsets.all(20) //content padding inside button
                  ),
                  onPressed: () {},
                  child: Text("Next"),
                )),
          ],
        ),
      ),
    );
  }
}
