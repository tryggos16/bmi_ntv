import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF0A0E2);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    activeCardColor,
                    iconContent(FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      activeCardColor,
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
