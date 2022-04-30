import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF0A0E21);
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
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class iconContent extends StatelessWidget {

  iconContent(this.icon, this.label);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Icon(
        icon,
          color: Colors.white,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text( label,
          style: const TextStyle(
          fontSize: 18.0,
          color:  Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {

  ReusableCard(@required this.colour, this.cardChild);

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

