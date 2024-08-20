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
                            Text('calculator',
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
                  flex: 4,
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
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                                child: Text.rich(
                              TextSpan(
                                  text: "Choose\n",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18),
                                  children: [
                                    TextSpan(
                                      text: "your Tip",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ]),
                            ))),
                        Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(
                                                255, 12, 200, 172),
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
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(
                                                255, 12, 200, 172),
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
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(
                                                255, 12, 200, 172),
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
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
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
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 40),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Text.rich(
                              TextSpan(
                                  text: "Split\n",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18),
                                  children: [
                                    TextSpan(
                                      text: "the total",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ]),
                            )),
                        Expanded(
                            flex: 3,
                            child: Container(
                                child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                      color: Color.fromARGB(255, 12, 200, 172),
                                    ),
                                    child: Center(
                                        child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 23,
                                    )),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    child: Center(
                                        child: Text(
                                      '2',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                      color: Color.fromARGB(255, 12, 200, 172),
                                    ),
                                    child: Center(
                                        child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                                  ),
                                )
                              ],
                            )))
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
