//Write a program in android display screen color which the color will be select from the radio button.

import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String? color;
  Color BG = Colors.white;
  bool? status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG,
      appBar: AppBar(
        title: Text("Radio Button"),
      ),
      body: Column(
        children: [
          RadioListTile(title: Text("Blue"),value: "blue", groupValue: color, onChanged: (value) {
            setState(() {
              color = value;
              BG = Colors.blue;
            });
          }),
          RadioListTile(title: Text("Yellow"),value: "yellow", groupValue: color, onChanged: (value) {
            setState(() {
              color = value;
              BG = Colors.yellow;
            });
          }),
          RadioListTile(title: Text("Green"),value: "green", groupValue: color, onChanged: (value) {
            setState(() {
              color = value;
              BG = Colors.green;
            });
          }),
        ],
      ),
    );
  }
}