import 'package:flutter/services.dart';

class KotlinPlatform {
  static const platform = const MethodChannel('flutter.native/helper');

  void playExample() async {
    try {
      await platform.invokeMethod("playExample");
    } on PlatformException catch (e) {
      print(e);
    }
  }
}
