import 'package:flutter/material.dart';

const textColor = Color(0xFF8D8E98);

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
          height: 20.0,
        ),
        Text( label,
          style: const TextStyle(
            fontSize: 18.0,
            color:  textColor,
          ),
        ),
      ],
    );
  }
}
