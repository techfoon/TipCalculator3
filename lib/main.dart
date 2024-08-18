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
            
          ],
        ),
      ),
    );
  }
}


//#01C9BE  Main color

// #00CABE  test color