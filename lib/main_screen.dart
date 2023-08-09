import 'package:dimipay_performancetest/containers/first_container.dart';
import 'package:dimipay_performancetest/containers/second_container.dart';
import 'package:dimipay_performancetest/containers/third_container.dart';
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
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return MaterialApp(
      home: Scaffold(
        //keyboard 불러올 때 bottom overflowed를 방지
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: [
              FirsContainer(),
              SecondContainer(),
              ThirdContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
