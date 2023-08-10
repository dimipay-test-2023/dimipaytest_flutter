import 'package:flutter/material.dart';

class CheckBox1 extends StatefulWidget {
  bool click = false;
  CheckBox1({super.key, required this.click});

  @override
  State<CheckBox1> createState() => _CheckBox1State();
}

class _CheckBox1State extends State<CheckBox1> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: widget.click,
        onChanged: (value) {
          setState(() {
            widget.click = !widget.click;
          });
        });
  }
}
