import 'package:flutter/material.dart';

class GreyContainer1 extends StatefulWidget {
  final String topText;
  const GreyContainer1({super.key, required this.topText});

  @override
  State<GreyContainer1> createState() => _GreyContainer1State();
}

class _GreyContainer1State extends State<GreyContainer1> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return SizedBox(
      width: screenwidthFixed * 260,
      height: screenheightFixed * 72,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xfff4f5f5),
          border: Border.all(color: const Color(0xffd3d5d5), width: 3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(
              height: screenheightFixed * 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: screenwidthFixed * 10,
                ),
                SizedBox(
                  width: screenwidthFixed * 52,
                  height: screenheightFixed * 22,
                  child: Text(
                    textAlign: TextAlign.start,
                    widget.topText,
                    style: const TextStyle(
                      fontFamily: 'Pretendard-Medium',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xff878787),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: screenheightFixed * 5,
            ),
            SizedBox(
              width: screenwidthFixed * 232,
              height: screenheightFixed * 20,
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            )
          ],
        ),
      ),
    );
  }
}
