import 'package:flutter/material.dart';
import '../widget/product_list.dart';

class SecondContainer extends StatefulWidget {
  const SecondContainer({super.key});

  @override
  State<SecondContainer> createState() => _SecondContainerState();
}

class _SecondContainerState extends State<SecondContainer> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return Container(
      width: screenwidthFixed * 858,
      decoration: const BoxDecoration(
        color: Color(0xFFF9F9F9),
      ),
      child: Column(
        children: [
          SizedBox(
            height: screenheightFixed * 42,
          ),
          Row(
            children: [
              SizedBox(
                width: screenwidthFixed * 40,
              ),
              SizedBox(
                width: screenwidthFixed * 78,
                height: screenheightFixed * 25,
                child: const Text(
                  textAlign: TextAlign.center,
                  '상품 목록',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Pretendard-SemiBold',
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: screenwidthFixed * 312,
              ),
              SizedBox(
                width: screenwidthFixed * 251,
                height: screenheightFixed * 41,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(0),
                    backgroundColor: const Color(0xff2c3939),
                  ),
                  child: const Text(
                    '필터링된 항목 엑셀로 다운로드',
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
              SizedBox(
                width: screenheightFixed * 124,
                height: screenheightFixed * 41,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(0),
                    backgroundColor: const Color(0xff2ea4ab),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.file_download_outlined),
                      Text(
                        '다운로드',
                        style: TextStyle(
                            fontSize: 21,
                            fontFamily: 'Pretendard-Medium',
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenheightFixed * 17,
          ),
          Row(
            children: [
              SizedBox(
                width: screenwidthFixed * 44,
              ),
              SizedBox(
                height: screenheightFixed * 578,
                width: screenwidthFixed * 768,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const ProductList(),
                ),
              ),
              SizedBox(
                width: screenwidthFixed * 44,
              )
            ],
          ),
          SizedBox(
            height: screenheightFixed * 17,
          ),
          //scrollcontroller
          Row(
            children: [
              SizedBox(
                width: screenwidthFixed * 44,
              ),
              BottomButtonScroll(),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomButtonScroll extends StatefulWidget {
  const BottomButtonScroll({super.key});

  @override
  State<BottomButtonScroll> createState() => _BottomButtonScrollState();
}

class _BottomButtonScrollState extends State<BottomButtonScroll> {
  String? selectedValue1;
  String? selectedValue2;
  String? selectedValue3;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;

    return SizedBox(
      width: screenwidthFixed * 814,
      height: screenheightFixed * 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              SizedBox(
                width: screenwidthFixed * 340,
                height: screenheightFixed * 60,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Color(0xff2ea4ab), width: 3),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: screenwidthFixed * 14,
                      ),
                      SizedBox(
                        width: screenwidthFixed * 26,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: true
                              ? Icon(Icons.visibility_outlined)
                              : Icon(Icons.visibility_off),
                          color: Color(0xff4d4fee),
                        ),
                      ),
                      SizedBox(
                        width: screenwidthFixed * 5,
                      ),
                      SizedBox(
                        width: screenwidthFixed * 26,
                        child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: Icon(Icons.delete_outlined),
                            color: Color(0xffff9493)),
                      ),
                      SizedBox(
                        width: screenwidthFixed * 60,
                        height: screenheightFixed * 52,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "재고가",
                              style: TextStyle(
                                  fontFamily: 'Pretendard-Medium',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenwidthFixed * 30,
                            height: screenheightFixed * 24,
                            child: const TextField(
                              style: TextStyle(
                                fontSize: 18.0,
                                height: 1.0,
                                color: Color(0xff2ea4ab),
                                fontFamily: 'Pretendar-Medium',
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff2ea4ab), width: 2),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff2ea4ab), width: 2),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenwidthFixed * 46,
                        height: screenheightFixed * 60,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '보다',
                              style: TextStyle(
                                  fontFamily: 'Pretendard-Medium',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screenwidthFixed * 80,
                        height: screenheightFixed * 60,
                        child: Row(
                          children: [
                            DropdownButton<String?>(
                              value: selectedValue1,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue1 = newValue;
                                });
                                print(newValue);
                              },
                              items: [null, 'big', 'small']
                                  .map<DropdownMenuItem<String?>>(
                                (String? i) {
                                  return DropdownMenuItem<String?>(
                                    value: i,
                                    child: Text({
                                          'big': '많은/큰',
                                          'small': '적은/작은'
                                        }[i] ??
                                        '선택'),
                                  );
                                },
                              ).toList(),
                              style: const TextStyle(
                                fontSize: 15.0,
                                height: 1.0,
                                color: Color(0xff2ea4ab),
                                fontFamily: 'Pretendar-Medium',
                                fontWeight: FontWeight.w500,
                              ),
                              underline: Container(
                                height: 2,
                                color: Color(0xff2ea4ab),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screenwidthFixed * 30,
                        height: screenheightFixed * 60,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '상품',
                              style: TextStyle(
                                  fontFamily: 'Pretendard-Medium',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: screenwidthFixed * 8,
              ),
              SizedBox(
                width: screenwidthFixed * 390,
                height: screenheightFixed * 60,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Color(0xff2ea4ab), width: 3),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: screenwidthFixed * 14,
                      ),
                      SizedBox(
                        width: screenwidthFixed * 26,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: true
                              ? Icon(Icons.visibility_outlined)
                              : Icon(Icons.visibility_off),
                          color: Color(0xff4d4fee),
                        ),
                      ),
                      SizedBox(
                        width: screenwidthFixed * 5,
                      ),
                      SizedBox(
                        width: screenwidthFixed * 26,
                        child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: Icon(Icons.delete_outlined),
                            color: Color(0xffff9493)),
                      ),
                      SizedBox(
                        width: screenwidthFixed * 60,
                        height: screenheightFixed * 52,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "이름이",
                              style: TextStyle(
                                  fontFamily: 'Pretendard-Medium',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenwidthFixed * 60,
                            height: screenheightFixed * 24,
                            child: const TextField(
                              style: TextStyle(
                                fontSize: 18.0,
                                height: 1.0,
                                color: Color(0xff2ea4ab),
                                fontFamily: 'Pretendar-Medium',
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff2ea4ab), width: 2),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff2ea4ab), width: 2),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenwidthFixed * 46,
                        height: screenheightFixed * 60,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '를',
                              style: TextStyle(
                                  fontFamily: 'Pretendard-Medium',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screenwidthFixed * 100,
                        height: screenheightFixed * 60,
                        child: Row(
                          children: [
                            DropdownButton<String?>(
                              value: selectedValue2,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue2 = newValue;
                                });
                                print(newValue);
                              },
                              items: [null, 'include', 'ninclude']
                                  .map<DropdownMenuItem<String?>>(
                                (String? i) {
                                  return DropdownMenuItem<String?>(
                                    value: i,
                                    child: Text({
                                          'include': '포함하는',
                                          'ninclude': '포함하지 않는'
                                        }[i] ??
                                        '선택'),
                                  );
                                },
                              ).toList(),
                              style: const TextStyle(
                                fontSize: 15.0,
                                height: 1.0,
                                color: Color(0xff2ea4ab),
                                fontFamily: 'Pretendar-Medium',
                                fontWeight: FontWeight.w500,
                              ),
                              underline: Container(
                                height: 2,
                                color: Color(0xff2ea4ab),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screenwidthFixed * 30,
                        height: screenheightFixed * 60,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '상품',
                              style: TextStyle(
                                  fontFamily: 'Pretendard-Medium',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: screenwidthFixed * 8,
              ),
              SizedBox(
                width: screenwidthFixed * 410,
                height: screenheightFixed * 60,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Color(0xff2ea4ab), width: 3),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: screenwidthFixed * 14,
                      ),
                      SizedBox(
                        width: screenwidthFixed * 26,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: true
                              ? Icon(Icons.visibility_outlined)
                              : Icon(Icons.visibility_off),
                          color: Color(0xff4d4fee),
                        ),
                      ),
                      SizedBox(
                        width: screenwidthFixed * 5,
                      ),
                      SizedBox(
                        width: screenwidthFixed * 26,
                        child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: Icon(Icons.delete_outlined),
                            color: Color(0xffff9493)),
                      ),
                      SizedBox(
                        width: screenwidthFixed * 60,
                        height: screenheightFixed * 52,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "분류가",
                              style: TextStyle(
                                  fontFamily: 'Pretendard-Medium',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenwidthFixed * 80,
                            height: screenheightFixed * 24,
                            child: const TextField(
                              style: TextStyle(
                                fontSize: 18.0,
                                height: 1.0,
                                color: Color(0xff2ea4ab),
                                fontFamily: 'Pretendar-Medium',
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff2ea4ab), width: 2),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff2ea4ab), width: 2),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenwidthFixed * 46,
                        height: screenheightFixed * 60,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '을',
                              style: TextStyle(
                                  fontFamily: 'Pretendard-Medium',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screenwidthFixed * 100,
                        height: screenheightFixed * 60,
                        child: Row(
                          children: [
                            DropdownButton<String?>(
                              value: selectedValue3,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue3 = newValue;
                                });
                                print(newValue);
                              },
                              items: [null, 'include', 'ninclude']
                                  .map<DropdownMenuItem<String?>>(
                                (String? i) {
                                  return DropdownMenuItem<String?>(
                                    value: i,
                                    child: Text({
                                          'include': '포함하는',
                                          'ninclude': '포함하지 않는'
                                        }[i] ??
                                        '선택'),
                                  );
                                },
                              ).toList(),
                              style: const TextStyle(
                                fontSize: 15.0,
                                height: 1.0,
                                color: Color(0xff2ea4ab),
                                fontFamily: 'Pretendar-Medium',
                                fontWeight: FontWeight.w500,
                              ),
                              underline: Container(
                                height: 2,
                                color: Color(0xff2ea4ab),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screenwidthFixed * 30,
                        height: screenheightFixed * 60,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '상품',
                              style: TextStyle(
                                  fontFamily: 'Pretendard-Medium',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: screenwidthFixed * 10,
          )
        ],
      ),
    );
  }
}
