import 'package:flutter/material.dart';

class MainList extends StatefulWidget {
  const MainList({super.key});

  @override
  State<MainList> createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return SizedBox(
      height: screenheightFixed * 446,
      width: screenwidthFixed * 768,
      child: Column(
        children: [
          Container(
            width: screenwidthFixed * 14,
            color: Colors.black,
          ),
          Row()
        ],
      ),
    );
  }
}
