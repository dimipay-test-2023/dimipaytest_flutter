import 'package:dimipay_performancetest/containers/product_listview.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';

//768*578 = 768 504:2:72

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final _controller1 = ScrollController();
  final _controller2 = ScrollController();
  @override
  void initState() {
    super.initState();
    _controller1.addListener(listener1);
    _controller2.addListener(listener2);
  }

  var _flag1 = false;
  var _flag2 = false;

  void listener1() {
    if (_flag2) return;
    _flag1 = true;
    _controller2.jumpTo(_controller1.offset);
    _flag1 = false;
  }

  void listener2() {
    if (_flag1) return;
    _flag2 = true;
    _controller1.jumpTo(_controller2.offset);
    _flag2 = false;
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return Column(
      children: [
        TopBar(sharedcontroller: _controller1),
        Container(
          height: screenheightFixed * 2,
          width: screenwidthFixed * 750,
          color: const Color(0xfff4f5f5),
        ),
        MainList(sharedcontroller: _controller2),
        Container(
          height: screenheightFixed * 2,
          width: screenwidthFixed * 750,
          color: const Color(0xfff4f5f5),
        ),
        const BottomButton(),
      ],
    );
  }
}

class TopBar extends StatefulWidget {
  const TopBar({Key? key, required this.sharedcontroller}) : super(key: key);

  final ScrollController sharedcontroller;

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  bool allselectchekcbox = false;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return Column(
      children: [
        SizedBox(
          height: screenheightFixed * 10,
        ),
        SizedBox(
          height: screenheightFixed * 36,
          width: screenwidthFixed * 768,
          //listview
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: widget.sharedcontroller,
            child: Row(
              children: [
                // width 12
                SizedBox(
                  width: screenwidthFixed * 12,
                ),
                SizedBox(
                  width: 20,
                  height: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: allselectchekcbox
                            ? const Color(0xFF2EA4AB)
                            : const Color(0xFFD7D9D9),
                      ),
                    ),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        unselectedWidgetColor: const Color(0xFFD9D9D9),
                      ),
                      child: Checkbox(
                        value: allselectchekcbox,
                        onChanged: (value) async {
                          setState(() {
                            allselectchekcbox = !allselectchekcbox;
                          });
                          if (allselectchekcbox == true) {
                            await allcheckboxOn();
                          } else {
                            await allcheckboxOff();
                          }
                        },
                        checkColor: const Color(0xFF2EA4AB),
                        activeColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenwidthFixed * 12,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: screenwidthFixed * 260,
                      child: const SizedBox(
                        child: Text(
                          '이름',
                          style: TextStyle(
                              color: Color(0xff7c8585),
                              fontFamily: 'Pretendard-Medium',
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenwidthFixed * 98,
                      child: const SizedBox(
                        child: Text(
                          '수량',
                          style: TextStyle(
                              color: Color(0xff7c8585),
                              fontFamily: 'Pretendard-Medium',
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenwidthFixed * 98,
                      child: const SizedBox(
                        child: Text(
                          '정가',
                          style: TextStyle(
                              color: Color(0xff7c8585),
                              fontFamily: 'Pretendard-Medium',
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenwidthFixed * 119,
                      child: const SizedBox(
                        child: Text(
                          '분류',
                          style: TextStyle(
                              color: Color(0xff7c8585),
                              fontFamily: 'Pretendard-Medium',
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenwidthFixed * 152,
                      child: const Text(
                        '할인정책',
                        style: TextStyle(
                            color: Color(0xff7c8585),
                            fontFamily: 'Pretendard-Medium',
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      width: screenwidthFixed * 152,
                      child: const Text(
                        '바코드',
                        style: TextStyle(
                            color: Color(0xff7c8585),
                            fontFamily: 'Pretendard-Medium',
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      width: screenwidthFixed * 152,
                      child: const Text(
                        '#',
                        style: TextStyle(
                            color: Color(0xff7c8585),
                            fontFamily: 'Pretendard-Medium',
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: screenheightFixed * 8,
        ),
      ],
    );
  }
}

class BottomButton extends StatefulWidget {
  const BottomButton({super.key});

  @override
  State<BottomButton> createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return SizedBox(
      height: screenheightFixed * 74,
      width: screenwidthFixed * 768,
      child: Column(
        children: [
          SizedBox(
            height: screenheightFixed * 16,
          ),
          Row(
            children: [
              SizedBox(
                width: screenwidthFixed * 16,
              ),
              Container(
                width: screenwidthFixed * 102,
                height: screenheightFixed * 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff2ea4ab).withOpacity(0.7),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(0),
                    backgroundColor: const Color(0xff2ea4ab),
                  ),
                  child: const Text(
                    '일괄 수정',
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'Pretendard-Medium',
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                width: screenwidthFixed * 8,
              ),
              Container(
                width: screenwidthFixed * 104,
                height: screenheightFixed * 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff2ea4ab).withOpacity(0.7),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(0),
                    backgroundColor: const Color(0xff2ea4ab),
                  ),
                  child: const Text(
                    '판매 중단',
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'Pretendard-Medium',
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Future<void> allcheckboxOn() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String checkboxJson = prefs.getString('productCheckbox')!;
  List checkboxList = jsonDecode(checkboxJson);
  for (int i = 0; i < checkboxList.length; i++) {
    checkboxList[i] = true;
  }
  prefs.setString('productCheckbox', json.encode(checkboxList));
  return;
}

Future<void> allcheckboxOff() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String checkboxJson = prefs.getString('productCheckbox')!;
  List checkboxList = jsonDecode(checkboxJson);
  for (int i = 0; i < checkboxList.length; i++) {
    checkboxList[i] = false;
  }
  prefs.setString('productCheckbox', json.encode(checkboxList));
  return;
}
