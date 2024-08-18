import 'package:flutter/material.dart';
import 'package:tipcalculator/dasbord.dart';

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




//#01C9BE  Main color

// #00CABE  test color