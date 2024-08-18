import 'package:flutter/material.dart';

class TipDashBoard extends StatelessWidget {
  final TextEditingController TipContoler = TextEditingController();

  TextEditingController TipControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF5F3F4),
      /*appBar: AppBar(
        title: Text(""),
      ),*/
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.zero,
                            height: 100,
                            child:
                                Image.asset('assets/images/magicianhat.png')),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Container(
                                  margin: EdgeInsets.zero,
                                  //color: Colors.yellow,
                                  child: Text.rich(
                                    TextSpan(
                                        text: 'Mr ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                        children: [
                                          TextSpan(
                                            text: 'TIP',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 35),
                                          ),
                                        ]),
                                  ),
                                )
                              ],
                            ),
                            Text('Calculator',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                )),
                          ],
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 5,
                  child: Container(
                    height: 230,
                    child: Card(
                        shadowColor: Color.fromARGB(255, 146, 144, 144),
                        elevation: 5,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Total p/person",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    text: "\$",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                    children: [
                                      TextSpan(
                                          text: "000",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 60))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16, right: 16),
                              child: Divider(
                                color: Colors.black,
                                thickness: 2,
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(left: 16, right: 16, top: 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Total tip",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Text("\$000",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 5, 141, 171),
                                              fontSize: 27))
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "TotalBill",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Text("\$000",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 5, 141, 171),
                                              fontSize: 27))
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                  )),

              /*******************new section */
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                                child: Text.rich(
                              TextSpan(
                                  text: "Enter\n",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18),
                                  children: [
                                    TextSpan(
                                      text: "your bill",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ]),
                            ))),
                        Expanded(
                            flex: 3,
                            child: Container(
                              child: TextField(
                                controller: TipContoler,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 2),
                                  prefixIcon: Icon(Icons.attach_money),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ))
                      ],
                    ),
                  )),
              Expanded(
                  flex: 4,
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                                child: Container(
                                    child: Text.rich(
                              TextSpan(
                                  text: "Enter\n",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18),
                                  children: [
                                    TextSpan(
                                      text: "your billd",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ]),
                            )))),
                        Expanded(
                            flex: 3,
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 12, 200, 172),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "10%",
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 12, 200, 172),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "15%",
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 12, 200, 172),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "20%",
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 60, top: 10),
                                    height: 50,
                                    width: 233,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 12, 200, 172),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Custom tip",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.pink,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
