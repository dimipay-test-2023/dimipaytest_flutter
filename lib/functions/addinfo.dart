import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

Future<void> addInfo({
  required String name,
  required int price,
  required int barcode,
  required String category,
}) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
}
