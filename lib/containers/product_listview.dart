import 'package:flutter/material.dart';
import 'package:dimipay_performancetest/theme/text_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class MainList extends StatefulWidget {
  const MainList({Key? key, required this.sharedcontroller}) : super(key: key);

  final ScrollController sharedcontroller;
  @override
  State<MainList> createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  List<String> productList = [];
  List<int> productPrice = [];
  List<int> productQuantity = [];
  List<String> productCategory = [];
  List<String> productDiscount = [];
  List<int> productBarcode = [];
  List<String> productEtc = [];
  List<bool> productCheckbox = [];

  @override
  void initState() {
    super.initState();
    loadProductList();
    loadProductPrice();
    loadProductQuantity();
    loadProductCategory();
    loadProductDiscount();
    loadProductBarcode();
    loadProductEtc();
    loadProductCheckbox();
  }

  Future<void> loadProductList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String productListString = prefs.getString('productList') ?? '[]';
    setState(() {
      productList = List<String>.from(json.decode(productListString));
    });
  }

  Future<void> loadProductPrice() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String productPriceString = prefs.getString('productPrice') ?? '[]';

    print(json.decode(productPriceString));
    setState(() {
      productPrice = List<int>.from(json.decode(productPriceString));
    });
  }

  Future<void> loadProductQuantity() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String productQuantityString = prefs.getString('productQuantity') ?? '[]';
    setState(() {
      productQuantity = List<int>.from(json.decode(productQuantityString));
    });
  }

  Future<void> loadProductCategory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String productCategoryString = prefs.getString('productCategory') ?? '[]';
    setState(() {
      productCategory = List<String>.from(json.decode(productCategoryString));
    });
  }

  Future<void> loadProductDiscount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String productDiscountString = prefs.getString('productDiscount') ?? '[]';
    setState(() {
      productDiscount = List<String>.from(json.decode(productDiscountString));
    });
  }

  Future<void> loadProductBarcode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String productBarcodeString = prefs.getString('productBarcode') ?? '[]';
    setState(() {
      productBarcode = List<int>.from(json.decode(productBarcodeString));
    });
  }

  Future<void> loadProductEtc() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String productEtcString = prefs.getString('productEtc') ?? '[]';
    setState(() {
      productEtc = List<String>.from(json.decode(productEtcString));
    });
  }

  Future<void> loadProductCheckbox() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String productCheckboxString = prefs.getString('productCheckbox') ?? '[]';
    setState(() {
      productCheckbox = List<bool>.from(json.decode(productCheckboxString));
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenwidthFixed = MediaQuery.of(context).size.width / 1422;
    // ignore: unused_local_variable
    double screenheightFixed = MediaQuery.of(context).size.height / 803;
    return SizedBox(
      height: screenheightFixed * 446,
      width: screenwidthFixed * 768,
      child: SingleChildScrollView(
        controller: widget.sharedcontroller,
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: 20 + screenwidthFixed * 1055,
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: productList.length,
            itemBuilder: (BuildContext context, int index) {
              return Row(
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
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
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
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: productcheckboxstatus
                  ? const Color(0xFF2EA4AB)
                  : const Color(0xFFD7D9D9),
            ),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              unselectedWidgetColor: const Color(0xFFD9D9D9),
            ),
            child: Checkbox(
              value: productcheckboxstatus,
              onChanged: (value) {
                setState(() {
                  productcheckboxstatus = value ?? false;
                });
              },
              checkColor: const Color(0xFF2EA4AB),
              activeColor: Colors.white,
            ),
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
