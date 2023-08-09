import 'package:flutter/material.dart';
//768*578 = 768 504:2:72

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return Column(
      children: [
        SizedBox(
          height: screenheightFixed * 502,
          width: screenwidthFixed * 768,
        ),
        Container(
          height: screenheightFixed * 2,
          width: screenwidthFixed * 768,
          color: Color(0xfff4f5f5),
        ),
        SizedBox(
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
                  SizedBox(
                    width: screenwidthFixed * 102,
                    height: screenheightFixed * 40,
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
                  SizedBox(
                    width: screenwidthFixed * 104,
                    height: screenheightFixed * 40,
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
        ),
      ],
    );
  }
}
