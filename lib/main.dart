import 'package:flutter/material.dart';

void main() {
  runApp(TipCalculator());
}
class TipCalculator extends StatelessWidget {
  const TipCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TipDashBoard(),
    );
  }
}

class TipDashBoard extends StatelessWidget {
  final TextEditingController TipContoler = TextEditingController();

  TextEditingController TipControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(""),
      ),*/
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.zero,
                        height: 100,
                        child: Image.asset('assets/images/magicianhat.png'))
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
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
                          child: Text('Mr ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17)),
                        ),
                        Text(
                          'TIP',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 35),
                        ),
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
            Container(
              height: 230,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
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
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "\$000",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 60),
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
                        margin: EdgeInsets.only(left: 16, right: 16, top: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        color: Color.fromARGB(255, 5, 141, 171),
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
                                        color: Color.fromARGB(255, 5, 141, 171),
                                        fontSize: 27))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )),

              /* new section*/
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: Row(
                //// need some imporvement here
                children: [
                  Column(
                    children: [
                      Text(
                        "Enter",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "your bill",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      controller: TipContoler,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                        prefixIcon: Icon(Icons.attach_money),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  //// need some imporvement here
                  children: [
                    Column(
                      children: [
                        Text(
                          "Choose",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "your tip",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        ],
                      ),
                    ),
                  ],
                )),
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
            SizedBox(
              height: 50,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  //// need some imporvement here
                  children: [
                    Column(
                      children: [
                        Text(
                          "Split",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "the Total",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 70,
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
                            Container(
                              height: 50,
                              width: 90,
                              child: Center(
                                  child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "2"),
                              )),
                            ),
                            Container(
                              height: 50,
                              width: 70,
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
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}


//#01C9BE  Main color

// #00CABE  test color