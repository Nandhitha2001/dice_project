import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  State<dice> createState() => _diceState();
}


class _diceState extends State<dice> {
  int leftdicenumber=2;
  int rightdicenumber=1;
  void Changedicenumber(){
    setState(() {
      leftdicenumber=Random().nextInt(6)+1;
      rightdicenumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      body: Center(
        child: Row(
          children:[
            Expanded(child: TextButton(onPressed: Changedicenumber, child: Image.asset("images/dice $leftdicenumber.jpeg"),)),
            Expanded(child: TextButton(onPressed: Changedicenumber, child: Image.asset("images/dice $rightdicenumber.jpeg"),)),
          ]),
      )


    );
  }
}
