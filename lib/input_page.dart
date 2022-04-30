import 'package:flutter/material.dart';

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
        backgroundColor: Color(0xFF0A0E21),
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: const <Widget> [
                Expanded(
                  child: ReusableCard(),
                ),
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(),
          ),
          Expanded(child: Row(
            children: const <Widget>[
              Expanded(
                child: ReusableCard(),
              ),
              Expanded(
                child: ReusableCard(),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

