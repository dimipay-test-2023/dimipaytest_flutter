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
    double screenwidthFixed = MediaQuery.of(context).size.height / 803;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.width / 1422;
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
                child: Column(
                  children: [
                    SizedBox(height: screenheightFixed * 42),
                    SizedBox(
                      width: screenwidthFixed * 252,
                      height: screenheightFixed * 30,
                      child: SizedBox(
                        child: Image.asset('assets/images/dimipay_logo.png'),
                      ),
                    ),
                    SizedBox(
                      height: screenheightFixed * 22,
                    ),
                    SizedBox(
                      width: screenwidthFixed * 170,
                      height: screenheightFixed * 158,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '판매',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Pretendard-SemiBold',
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: screenheightFixed * 12,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: const Text(
                              '상품',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontFamily: 'Pretendard-Medium',
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: screenheightFixed * 12,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: const Text(
                              '할인 정책',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontFamily: 'Pretendard-Medium',
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: screenheightFixed * 12,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: const Text(
                              '결제 내역',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontFamily: 'Pretendard-Medium',
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: screenheightFixed * 12,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: const Text(
                              '쿠폰',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontFamily: 'Pretendard-Medium',
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenheightFixed * 18,
                    ),
                    SizedBox(
                      width: screenwidthFixed * 170,
                      height: screenheightFixed * 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '관리',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Pretendard-SemiBold',
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: screenheightFixed * 12,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: const Text(
                              '결제 단말기',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontFamily: 'Pretendard-Medium',
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
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
                            child: Column(
                              children: [
                                Row(),
                                Row(),
                                Row(),
                              ],
                            ),
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
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenheightFixed * 42,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: screenwidthFixed * 28,
                        ),
                        SizedBox(
                          width: screenwidthFixed * 96,
                          height: screenheightFixed * 24,
                        ),
                        SizedBox(
                          width: screenwidthFixed * 144,
                        ),
                        SizedBox(
                          width: screenwidthFixed * 26,
                          height: screenheightFixed * 26,
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
                          width: screenwidthFixed * 28,
                        ),
                        SizedBox(
                          width: screenwidthFixed * 32,
                          height: screenheightFixed * 22,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenheightFixed * 17,
                    ),
                    SizedBox(
                      width: screenwidthFixed * 260,
                      height: screenheightFixed * 72,
                    ),
                    SizedBox(
                      height: screenheightFixed * 6,
                    ),
                    SizedBox(
                      width: screenwidthFixed * 260,
                      height: screenheightFixed * 16,
                    ),
                    SizedBox(
                      height: screenheightFixed * 20,
                    ),
                    SizedBox(
                      width: screenwidthFixed * 260,
                      height: screenheightFixed * 72,
                    ),
                    SizedBox(
                      height: screenheightFixed * 16,
                    ),
                    SizedBox(
                      width: screenwidthFixed * 260,
                      height: screenheightFixed * 72,
                    ),
                    SizedBox(
                      height: screenheightFixed * 16,
                    ),
                    SizedBox(
                      width: screenwidthFixed * 260,
                      height: screenheightFixed * 212,
                    ),
                    SizedBox(
                      height: screenheightFixed * 16,
                    ),
                    SizedBox(
                      width: screenwidthFixed * 260,
                      height: screenheightFixed * 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
