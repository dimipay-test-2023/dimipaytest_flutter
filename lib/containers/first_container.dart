import 'package:flutter/material.dart';
import '../widget/TextButton1.dart';

class FirsContainer extends StatefulWidget {
  const FirsContainer({super.key});

  @override
  State<FirsContainer> createState() => _FirsContainerState();
}

class _FirsContainerState extends State<FirsContainer> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return Container(
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
                TextButton1(
                  buttonText: '상품',
                  pressedEffect: () {},
                  finishTrue: false,
                ),
                TextButton1(
                  buttonText: '할인 정책',
                  pressedEffect: () {},
                  finishTrue: false,
                ),
                TextButton1(
                  buttonText: '결제 내역',
                  pressedEffect: () {},
                  finishTrue: false,
                ),
                TextButton1(
                  buttonText: '쿠폰',
                  pressedEffect: () {},
                  finishTrue: true,
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
                TextButton1(
                    buttonText: '결제 단말기',
                    pressedEffect: () {},
                    finishTrue: true)
              ],
            ),
          )
        ],
      ),
    );
  }
}
