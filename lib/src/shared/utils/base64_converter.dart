import 'dart:convert';

import 'package:flutter/services.dart';

abstract class Base64Converter {
  static Uint8List decode(String base64formatData) {
    return base64.decode(base64formatData);
  }

  static String encode(List<int> input) {
    return base64.encode(input);
  }
}
