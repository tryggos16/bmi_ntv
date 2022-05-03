import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
  // nor for "null".
  nor,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender = Gender.nor;

  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;

  // void updateColor(Gender selectedGender){
  //   if (selectedGender == Gender.male){
  //     if(maleCardColor == inactiveCardColor){
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       maleCardColor = activeCardColor;
  //     }
  //   }
  //   if (selectedGender == Gender.female){
  //     if(femaleCardColor == inactiveCardColor){
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = activeCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: activeCardColor,
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children:  <Widget> [
                Expanded(
                  child: ReusableCard(
                    selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                    iconContent(FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                    iconContent(FontAwesomeIcons.venus, 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              activeCardColor,
              iconContent(FontAwesomeIcons.mars, 'male'),
            ),
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                    activeCardColor,
                    iconContent(FontAwesomeIcons.mars, 'male'),
                ),
              ),
              Expanded(
                child: ReusableCard(
                    activeCardColor,
                    iconContent(FontAwesomeIcons.mars, 'male'),
                ),
              ),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
