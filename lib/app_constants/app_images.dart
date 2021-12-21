import 'package:flutter/material.dart';
import 'package:kurs3_sabak3/app_constants/app_urls.dart';

class AppImages {
  static Map<String, String> paths = {
    'dice': '${AppUrls.imagesPath}/dice',
  };

  /// Kiska turu
  /// [static] funksiya [AppImages] ti kurbay ele
  /// [getDiceImage] funksiyasini koldongongo
  /// mumkunchuluk beret
  static Image getDiceImage(String number) =>
      Image.asset(paths['dice'] + '$number.png');

  /// Uzun turu
  /// tushundurmo
  Image getDiceNoStatic(String number) {
    /// paths['dice'] = 'assets/images/dice'
    /// egerde [number] = 1 bolso
    /// '$number.png' = '1.png'
    /// 'assets/images/dice' +  '1.png' = 'assets/images/dice1.png'
    return Image.asset(paths['dice'] + '$number.png');
  }
}
