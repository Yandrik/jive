import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KotlinPlatform {
  static const platform = MethodChannel('flutter.native/helper');

  Future<void> playExample() async {
    try {
      await platform.invokeMethod("playExample");
    } on PlatformException catch (e) {
      debugPrint("Error: ${e.message}");
    }
  }
}
