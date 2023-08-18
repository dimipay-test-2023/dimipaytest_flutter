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
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color:
              widget.click ? const Color(0xFF2EA4AB) : const Color(0xFFD7D9D9),
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          unselectedWidgetColor: const Color(0xFFD9D9D9),
        ),
        child: Checkbox(
          value: widget.click,
          onChanged: (value) {
            setState(() {
              widget.click = !widget.click;
            });
          },
          checkColor: const Color(0xFF2EA4AB),
          activeColor: Colors.white,
        ),
      ),
    );
  }
}
