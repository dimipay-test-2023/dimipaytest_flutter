import 'package:flutter/material.dart';

class TextButton1 extends StatefulWidget {
  final String buttonText;
  var pressedEffect = () {};
  bool finishTrue = false;
  TextButton1(
      {super.key,
      required this.buttonText,
      required this.pressedEffect,
      required this.finishTrue});

  @override
  State<TextButton1> createState() => _TextButton1State();
}

class _TextButton1State extends State<TextButton1> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return Column(
      children: [
        TextButton(
          onPressed: widget.pressedEffect,
          style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            widget.buttonText,
            style: const TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontFamily: 'Pretendard-Medium',
                fontWeight: FontWeight.w500),
          ),
        ),
        if (widget.finishTrue == false)
          SizedBox(
            height: screenheightFixed * 12,
          ),
      ],
    );
  }
}
