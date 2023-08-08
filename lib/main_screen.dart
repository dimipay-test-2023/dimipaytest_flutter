import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.height / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.width / 803;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                padding: EdgeInsets.only(left: screenwidthFixed * 18),
                child: Column(
                  children: [
                    SizedBox(height: screenheightFixed * 36),
                    SizedBox(
                      width: screenwidthFixed * 268,
                      height: screenheightFixed * 92,
                      child: Image.asset('assets/images/dimipay_logo.png'),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(color: Color(0xFFF9F9F9)),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
