import 'package:flutter/material.dart';

class TipDashBoard extends StatefulWidget {
  @override
  State<TipDashBoard> createState() => _TipDashBoardState();
}

class _TipDashBoardState extends State<TipDashBoard> {
  int Splitcount = 1;
  int tipPercent = 0;
  num totalBillAmt = 0.0;
  num totalTipAmt = 0.0;
  num totalAmt = 0.0;
  num perPersonAmt = 0.0;
  bool isCustomTip = false;

  final TextEditingController TipContoler = TextEditingController();

  TextEditingController TipControler = TextEditingController();
  TextEditingController TipCustomContoler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                                          text:
                                              "${perPersonAmt == 0.0 ? "000" : perPersonAmt.toStringAsFixed(2)}",
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
                                      Text(
                                          "\$${totalTipAmt == 0.0 ? "000" : totalTipAmt.toStringAsFixed(2)}",
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
                                      Text(
                                          "\$${totalBillAmt == 0.0 ? "000" : totalBillAmt.toStringAsFixed(2)}",
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
                                keyboardType: TextInputType.number,
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
                                        child: InkWell(
                                          onTap: () {
                                            tipPercent = 10;
                                            updateTheResult();
                                          },
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
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: InkWell(
                                          onTap: () {
                                            tipPercent = 15;
                                            updateTheResult();
                                          },
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
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: InkWell(
                                          onTap: () {
                                            tipPercent = 20;
                                            updateTheResult();
                                          },
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
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Expanded(
                                  child: Stack(
                                    children: [
                                      isCustomTip
                                          ? Container()
                                          : InkWell(
                                              onTap: () {
                                                isCustomTip = true;
                                                updateTheResult();
                                              },
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Color.fromARGB(
                                                      255, 12, 200, 172),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Custom tip",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                      isCustomTip
                                          ? TextField(
                                              keyboardType:
                                                  TextInputType.number,
                                              controller: TipCustomContoler,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 2),
                                                prefixIcon: Icon(Icons.percent),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                              onChanged: (value) {
                                                tipPercent = int.parse(
                                                    TipCustomContoler.text
                                                        .toString());

                                                updateTheResult();
                                              },
                                            )
                                          : Container()
                                    ],
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
                                  child: InkWell(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                        color:
                                            Color.fromARGB(255, 12, 200, 172),
                                      ),
                                      child: Center(
                                          child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 23,
                                      )),
                                    ),
                                    onTap: () {
                                      if (Splitcount > 1) {
                                        Splitcount--;
                                      }
                                      updateTheResult();
                                    },
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    child: Center(
                                        child: Text(
                                      '$Splitcount',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: InkWell(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                        color:
                                            Color.fromARGB(255, 12, 200, 172),
                                      ),
                                      child: Center(
                                          child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      )),
                                    ),
                                    onTap: () {
                                      Splitcount++;
                                      updateTheResult();
                                      ;
                                    },
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

  void updateTheResult() {
    if (TipContoler.text.isNotEmpty) {
      totalBillAmt = double.parse(TipContoler.text.toString());
      totalTipAmt = totalBillAmt * tipPercent / 100;
      totalAmt = totalBillAmt + totalTipAmt;
      perPersonAmt = totalAmt / Splitcount;

      setState(() {});
    } else {
      Splitcount = 1;
    }
  }
}
