import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dimipay_performancetest/main_screen.dart';
import 'package:get/get.dart';

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
    // 상태 바를 없애는 코드입니다.
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();
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
