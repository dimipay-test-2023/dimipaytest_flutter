import 'package:flutter/material.dart';
import 'package:dimipay_performancetest/theme/color_theme.dart';
import 'package:dimipay_performancetest/functions/addinfo.dart';
import 'package:get/get.dart';

class ThirdContainer extends StatefulWidget {
  const ThirdContainer({super.key});

  @override
  State<ThirdContainer> createState() => _ThirdContainerState();
}

class _ThirdContainerState extends State<ThirdContainer> {
  String? productname_new;
  int? productcost_new;
  int? productbarcode_new;
  String? productcategory_new;

  bool isnameclicked = false;
  bool ispriceclicked = false;
  bool isbarcodeclicked = false;
  bool iscategoryclicked = false;

  void nametapped() {
    setState(() {
      isnameclicked = true;
      ispriceclicked = false;
      isbarcodeclicked = false;
      iscategoryclicked = false;
    });
  }

  void pricetapped() {
    setState(() {
      isnameclicked = false;
      ispriceclicked = true;
      isbarcodeclicked = false;
      iscategoryclicked = false;
    });
  }

  void barcodetapped() {
    setState(() {
      isnameclicked = false;
      ispriceclicked = false;
      isbarcodeclicked = true;
      iscategoryclicked = false;
    });
  }

  void categorytapped() {
    setState(() {
      isnameclicked = false;
      ispriceclicked = false;
      isbarcodeclicked = false;
      iscategoryclicked = true;
    });
  }

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
                  GestureDetector(
                    onTap: nametapped,
                    child: SizedBox(
                      width: screenwidthFixed * 260,
                      height: screenheightFixed * 72,
                      child: Container(
                        decoration: BoxDecoration(
                          color: isnameclicked
                              ? const Color(0xFFFFFFFF)
                              : const Color(0xfff4f5f5),
                          border: Border.all(
                              color: isnameclicked
                                  ? DPColors.MainColor
                                  : const Color(0xffd3d5d5),
                              width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenheightFixed * 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: screenwidthFixed * 10,
                                ),
                                SizedBox(
                                  width: screenwidthFixed * 52,
                                  height: screenheightFixed * 22,
                                  child: const Text(
                                    textAlign: TextAlign.start,
                                    '상품 이름',
                                    style: TextStyle(
                                      fontFamily: 'Pretendard-Medium',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff878787),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: screenheightFixed * 5,
                            ),
                            SizedBox(
                              width: screenwidthFixed * 232,
                              height: screenheightFixed * 20,
                              child: TextField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none),
                                onChanged: (value) {
                                  setState(() {
                                    productname_new = value;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
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
                  GestureDetector(
                    onTap: pricetapped,
                    child: SizedBox(
                      width: screenwidthFixed * 260,
                      height: screenheightFixed * 72,
                      child: Container(
                        decoration: BoxDecoration(
                          color: ispriceclicked
                              ? const Color(0xFFFFFFFF)
                              : const Color(0xfff4f5f5),
                          border: Border.all(
                              color: ispriceclicked
                                  ? DPColors.MainColor
                                  : const Color(0xffd3d5d5),
                              width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenheightFixed * 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: screenwidthFixed * 10,
                                ),
                                SizedBox(
                                  width: screenwidthFixed * 52,
                                  height: screenheightFixed * 22,
                                  child: const Text(
                                    textAlign: TextAlign.start,
                                    '단가',
                                    style: TextStyle(
                                      fontFamily: 'Pretendard-Medium',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff878787),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: screenheightFixed * 5,
                            ),
                            SizedBox(
                              width: screenwidthFixed * 232,
                              height: screenheightFixed * 20,
                              child: TextField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none),
                                onChanged: (value) {
                                  setState(() {
                                    productcost_new = int.tryParse(value);
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenheightFixed * 16,
                  ),
                  GestureDetector(
                    onTap: barcodetapped,
                    child: SizedBox(
                      width: screenwidthFixed * 260,
                      height: screenheightFixed * 72,
                      child: Container(
                        decoration: BoxDecoration(
                          color: isbarcodeclicked
                              ? const Color(0xFFFFFFFF)
                              : const Color(0xfff4f5f5),
                          border: Border.all(
                              color: isbarcodeclicked
                                  ? DPColors.MainColor
                                  : const Color(0xffd3d5d5),
                              width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenheightFixed * 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: screenwidthFixed * 10,
                                ),
                                SizedBox(
                                  width: screenwidthFixed * 52,
                                  height: screenheightFixed * 22,
                                  child: const Text(
                                    textAlign: TextAlign.start,
                                    '바코드',
                                    style: TextStyle(
                                      fontFamily: 'Pretendard-Medium',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff878787),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: screenheightFixed * 5,
                            ),
                            SizedBox(
                              width: screenwidthFixed * 232,
                              height: screenheightFixed * 20,
                              child: TextField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none),
                                onChanged: (value) {
                                  setState(() {
                                    productbarcode_new = int.tryParse(value);
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenheightFixed * 16,
                  ),
                  //..
                  GestureDetector(
                    onTap: categorytapped,
                    child: SizedBox(
                      width: screenwidthFixed * 260,
                      height: screenheightFixed * 72,
                      child: Container(
                        decoration: BoxDecoration(
                          color: iscategoryclicked
                              ? const Color(0xFFFFFFFF)
                              : const Color(0xfff4f5f5),
                          border: Border.all(
                            color: iscategoryclicked
                                ? DPColors.MainColor
                                : const Color(0xffd3d5d5),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenheightFixed * 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: screenwidthFixed * 10,
                                ),
                                SizedBox(
                                  width: screenwidthFixed * 52,
                                  height: screenheightFixed * 22,
                                  child: const Text(
                                    textAlign: TextAlign.start,
                                    '분류',
                                    style: TextStyle(
                                      fontFamily: 'Pretendard-Medium',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff878787),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: screenheightFixed * 5,
                            ),
                            SizedBox(
                              width: screenwidthFixed * 232,
                              height: screenheightFixed * 20,
                              child: TextField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none),
                                onChanged: (value) {
                                  setState(() {
                                    productcategory_new = value;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenheightFixed * 156,
                  ),
                  Container(
                    width: screenwidthFixed * 260,
                    height: screenheightFixed * 40,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: DPColors.MainColor.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(0),
                        backgroundColor: const Color(0xff2ea4ab),
                      ),
                      onPressed: () async {
                        if (productcost_new != null &&
                            productbarcode_new != null &&
                            productcategory_new != null &&
                            productname_new != null) {
                          await addInfo(
                            name: productname_new!,
                            price: productcost_new!,
                            barcode: productbarcode_new!,
                            category: productcategory_new!,
                          );
                          setState(() {
                            productname_new = null;
                            productcategory_new = null;
                            productbarcode_new = null;
                            productcost_new = null;
                          });
                        } else {
                          Get.snackbar(
                            '알림',
                            '네 가지의 정보를 모두 입력하고 등록해주세요.',
                            snackPosition: SnackPosition.BOTTOM,
                            duration: const Duration(seconds: 2),
                          );
                          return;
                        }
                      },
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
