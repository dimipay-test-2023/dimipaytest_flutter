import 'package:flutter/material.dart';
import '../widget/grey_container1.dart';

class ThirdContainer extends StatefulWidget {
  const ThirdContainer({super.key});

  @override
  State<ThirdContainer> createState() => _ThirdContainerState();
}

class _ThirdContainerState extends State<ThirdContainer> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return Row(
      children: [
        SizedBox(width: screenwidthFixed * 28),
        Column(
          children: [
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenheightFixed * 42,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: screenwidthFixed * 96,
                        height: screenheightFixed * 24,
                        child: const Text(
                          '새 상품 등록',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Pretendard-Bold',
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenwidthFixed * 144,
                      ),
                      SizedBox(
                        width: screenwidthFixed * 26,
                        height: screenheightFixed * 26,
                        child: IconButton(
                          padding: const EdgeInsets.all(0),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.close,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenheightFixed * 28,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: screenwidthFixed * 32,
                        height: screenheightFixed * 22,
                        child: const Text(
                          textAlign: TextAlign.center,
                          '정보',
                          style: TextStyle(
                              fontFamily: 'Pretendard-Medium',
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenheightFixed * 17,
                  ),
                  const GreyContainer1(topText: '상품이름'),
                  SizedBox(
                    height: screenheightFixed * 6,
                  ),
                  SizedBox(
                    width: screenwidthFixed * 260,
                    height: screenheightFixed * 16,
                    child: const Text(
                      '추후 수정이 불가합니다.',
                      style: TextStyle(
                          color: Color(0xffcacaca),
                          fontFamily: 'Pretendard-Medium',
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: screenheightFixed * 20,
                  ),
                  const GreyContainer1(topText: '단가'),
                  SizedBox(
                    height: screenheightFixed * 16,
                  ),
                  const GreyContainer1(topText: '바코드'),
                  SizedBox(
                    height: screenheightFixed * 16,
                  ),
                  SizedBox(
                    width: screenwidthFixed * 260,
                    height: screenheightFixed * 212,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffd3d5d5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenheightFixed * 16,
                  ),
                  SizedBox(
                    width: screenwidthFixed * 260,
                    height: screenheightFixed * 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(0),
                        backgroundColor: const Color(0xff2ea4ab),
                      ),
                      onPressed: () {},
                      child: const Text(
                        '저장',
                        style: TextStyle(
                          fontFamily: 'Pretendard-Medium',
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
