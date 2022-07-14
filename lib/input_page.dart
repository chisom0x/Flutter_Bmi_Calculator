// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors,, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables
import 'package:bmi_calculator/bmi_brain.dart';
import 'package:bmi_calculator/const.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color maleColor = inactivecardcolor;
  Color femaleColor = inactivecardcolor;

  void updateColor(Gender selectedgender) {
    if (selectedgender == Gender.male) {
      if (maleColor == inactivecardcolor) {
        maleColor = cardcolor;
      } else {
        maleColor = inactivecardcolor;
      }
    }

    if (selectedgender == Gender.female) {
      if (femaleColor == inactivecardcolor) {
        femaleColor = cardcolor;
      } else {
        femaleColor = inactivecardcolor;
      }
    }
  }

  int height = 180;
  int weight = 60;
  int age = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
        backgroundColor: Color(0xff0A0E21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (() {
                      setState(
                        () {
                          updateColor(Gender.male);
                        },
                      );
                    }),
                    child: Reusablecard(
                      colour: maleColor,
                      cardchild: Iconcontent(
                        icon: FontAwesomeIcons.mars,
                        label: ' MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: (() {
                    setState(
                      () {
                        updateColor(Gender.female);
                      },
                    );
                  }),
                  child: Reusablecard(
                    colour: femaleColor,
                    cardchild: Iconcontent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Reusablecard(
              colour: cardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: slidetextstyle),
                      Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12),
                        thumbColor: Color(0xFFEB1555),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        overlayColor: Color(0x29EB1555)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Reusablecard(
                    colour: cardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            'WEIGHT',
                            style: labelTextStyle,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: slidetextstyle,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RawMaterialButton(
                                  onPressed: (() {
                                    setState(() {
                                      weight--;
                                    });
                                  }),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF4C4F5),
                                  constraints: BoxConstraints.tightFor(
                                    width: 56,
                                    height: 56,
                                  ),
                                  elevation: 0,
                                  child: Icon(FontAwesomeIcons.minus),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                RawMaterialButton(
                                  onPressed: (() {
                                    setState(() {
                                      weight++;
                                    });
                                  }),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF4C4F5),
                                  constraints: BoxConstraints.tightFor(
                                    width: 56,
                                    height: 56,
                                  ),
                                  elevation: 0,
                                  child: Icon(FontAwesomeIcons.plus),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.7,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusablecard(
                    colour: cardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            'AGE',
                            style: labelTextStyle,
                            
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: slidetextstyle,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RawMaterialButton(
                                  onPressed: (() {
                                    setState(() {
                                      age--;
                                    });
                                  }),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF4C4F5),
                                  constraints: BoxConstraints.tightFor(
                                    width: 56,
                                    height: 56,
                                  ),
                                  elevation: 0,
                                  child: Icon(FontAwesomeIcons.minus),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                RawMaterialButton(
                                  onPressed: (() {
                                    setState(() {
                                      age++;
                                    });
                                  }),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF4C4F5),
                                  constraints: BoxConstraints.tightFor(
                                    width: 56,
                                    height: 56,
                                  ),
                                  elevation: 0,
                                  child: Icon(FontAwesomeIcons.plus),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.7,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Bmibrain calc = Bmibrain(height: height, weight: weight);


              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Resultpage(
                  bmiresult: calc.calculatebmi(), 
                  interpretation: calc.getinterpertation(),
                   resultText: calc.getResult(),),
                   ),
              );
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
                    'C A L C U L A T E',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData iconData;

  RoundIconButton({required this.iconData});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: (() {}),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      elevation: 0,
      child: Icon(iconData),
    );
  }
}
