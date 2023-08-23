import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dimipay_performancetest/main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'dart:convert';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // 상태 바를 없애는 코드입니다.
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // 상태 바 없애는 코드
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    loadDataFromSharedPreferences();
  }

  Future<void> loadDataFromSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool isDataRegistered = prefs.getBool('dataRegistered') ?? false;
    print('isDataRegistered : $isDataRegistered');
    if (!isDataRegistered) {
      // 초기 데이터 저장 했는지 체크
      print('1');
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

      prefs.setString('productList', json.encode(productList));
      prefs.setString('productPrice', json.encode(productPrice));
      prefs.setString('productQuantity', json.encode(productQuantity));
      prefs.setString('productCategory', json.encode(productCategory));
      prefs.setString('productDiscount', json.encode(productDiscount));
      prefs.setString('productBarcode', json.encode(productBarcode));
      prefs.setString('productEtc', json.encode(productEtc));
      prefs.setString('productCheckbox', json.encode(productCheckbox));

      prefs.setBool('dataRegistered', true); // 초기 데이터 저장했다고 체크
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Pretendard',
        colorScheme: const ColorScheme.light(
          background: Colors.white,
          brightness: Brightness.light,
        ),
      ),
      home: const MainScreen(),
    );
  }
}
