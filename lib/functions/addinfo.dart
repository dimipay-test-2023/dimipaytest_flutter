import 'dart:convert';
import 'dart:math';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

Future<void> addInfo({
  required String name,
  required int price,
  required int barcode,
  required String category,
}) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String listJson = prefs.getString('productList')!;
  final String priceJson = prefs.getString('productPrice')!;
  final String quantityJson = prefs.getString('productQuantity')!;
  final String categoryJson = prefs.getString('productCategory')!;
  final String discountJson = prefs.getString('productDiscount')!;
  final String barcodeJson = prefs.getString('productBarcode')!;
  final String etcJson = prefs.getString('productEtc')!;
  final String checkboxJson = prefs.getString('productCheckbox')!;

  List productList = jsonDecode(listJson);
  List priceList = jsonDecode(priceJson);
  List quantitytList = jsonDecode(quantityJson);
  List categoryList = jsonDecode(categoryJson);
  List discountList = jsonDecode(discountJson);
  List barcodeList = jsonDecode(barcodeJson);
  List etcList = jsonDecode(etcJson);
  List checkboxList = jsonDecode(checkboxJson);

  productList.add(name);
  priceList.add(price);
  quantitytList.add(Random().nextInt(100));
  categoryList.add(category);
  discountList.add('');
  barcodeList.add(barcode);
  etcList.add('사용자 추가항목');
  checkboxList.add(false);

  prefs.setString('productList', json.encode(productList));
  prefs.setString('productPrice', json.encode(priceList));
  prefs.setString('productQuantity', json.encode(quantitytList));
  prefs.setString('productCategory', json.encode(categoryList));
  prefs.setString('productDiscount', json.encode(discountList));
  prefs.setString('productBarcode', json.encode(barcodeList));
  prefs.setString('productEtc', json.encode(etcList));
  prefs.setString('productCheckbox', json.encode(checkboxList));
  return;
}
