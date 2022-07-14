// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/const.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

class Resultpage extends StatelessWidget {
  Resultpage(
      {required this.bmiresult,
      required this.interpretation,
      required this.resultText});

  final String bmiresult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BMI CALCULATOR'),
          backgroundColor: Color(0xff0A0E21),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: titletextstyle,
              ),
            )),
            Expanded(
                flex: 5,
                child: Reusablecard(
                    colour: cardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          resultText.toUpperCase(),
                          style: resulttextstyle,
                        ),
                        Text(
                          bmiresult,
                          style: bmitextstyle,
                        ),
                        Text(
                          interpretation,
                          textAlign: TextAlign.center,
                          style: bmibodytextstyle,
                        ),
                      ],
                    ))),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: bottomcontainercolor,
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 80,
                child: Center(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'R E - C A L C U L A T E',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                )),
              ),
            ),
          ],
        ));
  }
}
