import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Dashboard.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _Category(),
    );
  }
}

class _Category extends StatefulWidget {
  const _Category({Key? key}) : super(key: key);

  @override
  State<_Category> createState() => _CategoryState();
}

class _CategoryState extends State<_Category> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Dashboard()));
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: Colors.green,
                        )),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey.shade50,
                        ),
                        child: TextFormField(
                          style: TextStyle(fontSize: 19),
                          cursorColor: Colors.black,
                          maxLines: 1,
                          decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: 'Search your needs here..',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 18),
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
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 18, left: 20),
                    child: Text("Category",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.green)),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            height: 131,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              image: DecorationImage(
                                image: AssetImage("assets/category/veg.png"),
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
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            height: 131,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              image: DecorationImage(
                                image: AssetImage("assets/category/fruit.png"),
                                alignment: FractionalOffset.center,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Fruits",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 12),
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            height: 131,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              image: DecorationImage(
                                image: AssetImage("assets/category/dryfruit.png"),
                                alignment: FractionalOffset.center,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Dry Fruit",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 12),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            height: 131,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              image: DecorationImage(
                                image: AssetImage("assets/category/meat.png"),
                                alignment: FractionalOffset.center,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Meat",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 12),
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            height: 131,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              image: DecorationImage(
                                image: AssetImage("assets/category/tea.png"),
                                alignment: FractionalOffset.center,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Tea/Coffee",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 12),
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            height: 131,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              image: DecorationImage(
                                image: AssetImage("assets/category/oil.png"),
                                alignment: FractionalOffset.center,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Oil & Ghee",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 12),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            height: 131,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              image: DecorationImage(
                                image: AssetImage("assets/category/diary.png"),
                                alignment: FractionalOffset.center,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Diary Products",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 12),
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            height: 131,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              image: DecorationImage(
                                image: AssetImage("assets/category/spices.png"),
                                alignment: FractionalOffset.center,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Spices",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 12),
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            height: 131,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              image: DecorationImage(
                                image: AssetImage("assets/category/rice.png"),
                                alignment: FractionalOffset.center,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Rice",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 12),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            height: 131,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              image: DecorationImage(
                                image: AssetImage("assets/category/beverage.png"),
                                alignment: FractionalOffset.center,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Beverages",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 12),
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            height: 131,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              image: DecorationImage(
                                image: AssetImage("assets/category/biscuit.png"),
                                alignment: FractionalOffset.center,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Biscuits",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 12),
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            height: 131,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              image: DecorationImage(
                                image: AssetImage("assets/category/deodorants.png"),
                                alignment: FractionalOffset.center,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Deodorants",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 12),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
