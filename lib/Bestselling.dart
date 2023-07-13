import 'package:auto_size_text/auto_size_text.dart';
import 'package:figma_clone/Category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:counter/counter.dart';


class Bestselling extends StatelessWidget {
  const Bestselling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _Bestselling(),
    );
  }
}
class _Bestselling extends StatefulWidget {
  const _Bestselling({Key? key}) : super(key: key);

  @override
  State<_Bestselling> createState() => _BestsellingState();
}

class _BestsellingState extends State<_Bestselling> {
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
                        MaterialPageRoute(builder: (_) => Category()));
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
                      child: Text("Best Selling Products",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.green)),
                    ),
                  ],
                ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Container(
                      height: 228,
                      width: 155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey),
                          ),
                        child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/bestselling/tomato.png"),
                              Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("Fresh Organic Tomato 500g"),
                                    Row(
                                      children: [
                                        Icon(Icons.currency_rupee_sharp,color: Colors.green),
                                    Text("30",style: TextStyle(color: Colors.green,fontSize: 20),),
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Counter(
                                        min: 0,
                                        max: 10,
                                        step: 1,
                                        onValueChanged: print,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]
                        ),
                      // Align(
                      //     alignment: Alignment.bottomCenter,
                      //     child: AutoSizeText(
                      //       "Fresh Organic Tomato",
                      //       style: TextStyle(
                      //           fontWeight: FontWeight.w400, fontSize: 10),
                      //     ),
                      //   ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Container(
                      height: 228,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                      ),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/bestselling/orange.png"),
                            SizedBox(height: 20,),
                            Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("Fresh Organic Oragne 500g"),
                                  Row(
                                    children: [
                                      Icon(Icons.currency_rupee_sharp,color: Colors.green),
                                      Text("50",style: TextStyle(color: Colors.green,fontSize: 20),),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Counter(
                                      min: 0,
                                      max: 10,
                                      step: 1,
                                      onValueChanged: print,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),
                  ),
                ],
              ),
            ),
      ]
    ),
        ),
      ),
    );
  }
}

