import 'package:flutter/material.dart';
import 'package:dimipay_performancetest/theme/text_theme.dart';

class MainList extends StatefulWidget {
  const MainList({super.key});

  @override
  State<MainList> createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  @override
  Widget build(BuildContext context) {
    int listlength = 14;
    List<String> productList = [
      '초코에몽',
      '닭다리(후라이드)',
      '자가비(짭잘한맛)',
      '핵짱셔요(청포도)',
      '예감(치즈그랑탕)',
      '아맛나',
      '파워에이드(500ml 페트)',
      '넥타이 (여)',
      '네스프레소 아메리카노',
      '탄산캡슐',
      '포카리스웨트',
      '돼지바 크런치',
      '돼지바 딸기맛',
      '대명 수험용 컴퓨터 사인펜',
    ];
    List<int> productPrice = [
      650,
      1240,
      1450,
      820,
      1030,
      400,
      1200,
      5000,
      2300,
      700,
      800,
      300,
      400,
      600,
    ];
    List<int> productQuantity = [
      120,
      24,
      20,
      12,
      32,
      18,
      30,
      5,
      11,
      21,
      9,
      30,
      32,
      10,
    ];
    List<String> productCategory = [
      '음료',
      '과자',
      '과자',
      '젤리',
      '과자',
      '아이스크림',
      '음료',
      '생필품',
      '음료',
      '음료',
      '음료',
      '아이스크림',
      '아이스크림',
      '필기도구',
    ];
    List<String> productDiscount = [
      '분류 예외(개별)',
      '적용중(개별)',
      '',
      '적용중(개별)',
      '',
      '적용중(개별)',
      '',
      '분류 예외(개별)',
      '적용 예정(분류)',
      '적용중(개별)',
      '',
      '적용중(개별)',
      '',
      '적용중(개별)',
    ];
    List<int> productBarcode = [
      8801069185866,
      8801043036535,
      8801062885428,
      8801117282301,
      8801069185867,
      8801043036538,
      8801019607919,
      8801062885420,
      8801117282381,
      8801069185856,
      8801043037535,
      8809019607912,
      8801882885428,
      880188288590,
    ];
    List<String> productEtc = [
      '적용 예정(개별)',
      '적용중(개별)',
      '',
      '',
      '',
      '적용 예정(개별)',
      '',
      '분류 예외(개별)',
      '적용 예정(분류)',
      '적용중(개별)',
      '',
      '적용중(개별)',
      '',
      '적용중(개별)',
    ];
    List<bool> productCheckbox = [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ];

    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    ScrollController scrollController = ScrollController();
    return SizedBox(
      height: screenheightFixed * 446,
      width: screenwidthFixed * 768,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: productList.length,
        itemBuilder: (BuildContext context, int index) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: scrollController,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProductCheckBoxFormat(productCheckbox[index]),
                ProductListFormat(productList[index]),
                ProductQuantityFormat(productQuantity[index]),
                ProductPriceFormat(productPrice[index]),
                ProductCategoryFormat(productCategory[index]),
                ProductDiscountFormat(productDiscount[index]),
                ProductBarcodeFormat(productBarcode[index]),
                ProductEtcFormat(productEtc[index]),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

class ProductCheckBoxFormat extends StatefulWidget {
  final bool productcheckboxstatus;
  const ProductCheckBoxFormat(this.productcheckboxstatus, {super.key});

  @override
  State<ProductCheckBoxFormat> createState() => _ProductCheckBoxFormatState();
}

class _ProductCheckBoxFormatState extends State<ProductCheckBoxFormat> {
  bool productcheckboxstatus = false;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return Row(
      children: [
        SizedBox(width: screenwidthFixed * 12),
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(
            value: productcheckboxstatus,
            onChanged: (value) {
              setState(() {
                productcheckboxstatus = value ?? false;
              });
            },
          ),
        ),
        SizedBox(width: screenwidthFixed * 12),
      ],
    );
  }
}

class ProductListFormat extends StatelessWidget {
  final String productName;
  const ProductListFormat(this.productName, {super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return SizedBox(
      width: screenwidthFixed * 260,
      height: screenheightFixed * 54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            productName,
            style: DPTextTheme.MainList,
          ),
        ],
      ),
    );
  }
}

class ProductQuantityFormat extends StatelessWidget {
  final int productQuantity;
  const ProductQuantityFormat(this.productQuantity, {super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return SizedBox(
      width: screenwidthFixed * 98,
      height: screenheightFixed * 54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                productQuantity.toString(),
                style: DPTextTheme.MainList,
              ),
              const Text(
                '개',
                style: DPTextTheme.MainList,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProductPriceFormat extends StatelessWidget {
  final int productPrice;
  const ProductPriceFormat(this.productPrice, {super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return SizedBox(
      width: screenwidthFixed * 98,
      height: screenheightFixed * 54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                productPrice.toString(),
                style: DPTextTheme.MainList,
              ),
              const Text(
                '원',
                style: DPTextTheme.MainList,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProductCategoryFormat extends StatelessWidget {
  final String productCategory;
  const ProductCategoryFormat(this.productCategory, {super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return SizedBox(
      width: screenwidthFixed * 119,
      height: screenheightFixed * 54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            productCategory,
            style: DPTextTheme.MainList,
          ),
        ],
      ),
    );
  }
}

class ProductDiscountFormat extends StatelessWidget {
  final String productDiscount;
  const ProductDiscountFormat(this.productDiscount, {super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return SizedBox(
      width: screenwidthFixed * 152,
      height: screenheightFixed * 54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            productDiscount,
            style: DPTextTheme.MainList,
          ),
        ],
      ),
    );
  }
}

class ProductBarcodeFormat extends StatelessWidget {
  final int productBarcode;
  const ProductBarcodeFormat(this.productBarcode, {super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return SizedBox(
      width: screenwidthFixed * 152,
      height: screenheightFixed * 54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            productBarcode.toString(),
            style: DPTextTheme.MainList,
          ),
        ],
      ),
    );
  }
}

class ProductEtcFormat extends StatelessWidget {
  final String productEtc;
  const ProductEtcFormat(this.productEtc, {super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return SizedBox(
      width: screenwidthFixed * 152,
      height: screenheightFixed * 54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            productEtc,
            style: DPTextTheme.MainList,
          ),
        ],
      ),
    );
  }
}
