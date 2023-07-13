import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:figma_clone/Bestselling.dart';
import 'package:figma_clone/Category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardDemo(),
    );
  }
}

class DashboardDemo extends StatefulWidget {
  @override
  _DashboardDemoState createState() => _DashboardDemoState();
}

class _DashboardDemoState extends State<DashboardDemo> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  final items = [
    Image.asset("assets/dashboard/smoothpage.png"),
    Image.asset("assets/dashboard/smoothpage.png"),
    Image.asset("assets/dashboard/smoothpage.png")
  ];
  final items1 = [
    Image.asset("assets/dashboard/caro1.png", height: 159.0, width: 300.0),
    Image.asset("assets/dashboard/caro1.png", height: 159.0, width: 300.0),
    Image.asset("assets/dashboard/caro1.png", height: 159.0, width: 300.0),
    Image.asset("assets/dashboard/caro1.png", height: 159.0, width: 300.0)
  ];
  int currentIndex = 0;
  int _selectedIndex = 0;
  int currentIndex1 = 0;
  int _current = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0:
          _current = 0;
          break;
        case 1:
          _current = 1;
          break;
        case 2:
          _current = 2;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 13),
                  child: Container(
                      width: 210,
                      height: 91,
                      child: Image.asset(
                        'assets/image/pure_organic.png',
                        alignment: Alignment.topLeft,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 120, top: 20),
                  child: IconButton(
                    icon: Icon(Icons.notifications_none_outlined),
                    color: Colors.grey,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade50,
                ),
                child: TextFormField(
                  style: TextStyle(fontSize: 19),
                  cursorColor: Colors.black,
                  maxLines: 1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: 'Search your needs here..',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.green,
                      ), // icon is 48px widget.
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  items: items,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: DotsIndicator(
                    dotsCount: items.length,
                    position: currentIndex.toInt(),
                    decorator: DotsDecorator(
                      shape: Border(),
                      activeColor: Colors.black,
                      color: Colors.green,
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 3),
              child: Row(children: [
                Expanded(
                    child: Text("Category",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.green))),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Category()));
                    },
                    child: Text("View all",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.green))),
              ]),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    height: 96,
                    width: 74,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      image: DecorationImage(
                        image: AssetImage("assets/dashboard/veg.png"),
                        alignment: FractionalOffset.center,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Vegetables",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    height: 96,
                    width: 74,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      image: DecorationImage(
                        image: AssetImage("assets/dashboard/fruit.png"),
                        alignment: FractionalOffset.center,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("Fruits",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    height: 96,
                    width: 74,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      image: DecorationImage(
                        image: AssetImage("assets/dashboard/dryfruit.png"),
                        alignment: FractionalOffset.center,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("Dry Fruits",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    height: 96,
                    width: 74,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        image: DecorationImage(
                          image: AssetImage("assets/dashboard/meat.png"),
                          alignment: FractionalOffset.center,
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("Meat",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Expanded(
                      child: Text("Offers",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.green))),
                ],
              ),
            ),
            Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    onPageChanged: (index1, reason1) {
                      setState(() {
                        currentIndex1 = index1;
                      });
                    },
                  ),
                  items: items1,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 9),
              child: DotsIndicator(
                dotsCount: items1.length,
                position: currentIndex1.toInt(),
                decorator: DotsDecorator(
                  shape: Border(),
                  activeColor: Colors.black,
                  color: Colors.green,
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 3),
              child: Row(children: [
                Expanded(
                    child: Text("Best Selling Products",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.green))),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Bestselling()));
                    },
                    child: Text("View all",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.green))),
              ]),
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.green,
                ),
                label: "",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.green,
                ),
                label: "",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.green,
                ),
                label: "",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.green,
                ),
                label: "",
                backgroundColor: Colors.black),
          ],
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.red[50],
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 5,
        ),
      ),
    );
  }
}

final colors = const [
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
];
