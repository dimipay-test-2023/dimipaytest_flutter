import 'package:flutter/material.dart';
import '../widget/Productlist.dart';

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
              SizedBox(
                width: screenwidthFixed * 328,
                height: screenheightFixed * 60,
              ),
              SizedBox(
                width: screenwidthFixed * 8,
              ),
              SizedBox(
                width: screenwidthFixed * 345,
                height: screenheightFixed * 60,
              ),
              SizedBox(
                width: screenwidthFixed * 8,
              ),
              SizedBox(
                width: screenwidthFixed * 125,
                height: screenheightFixed * 60,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
