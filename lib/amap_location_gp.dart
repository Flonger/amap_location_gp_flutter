import 'dart:async';

import 'package:flutter/services.dart';

class AmapLocationGp {
  static const MethodChannel _channel =
      const MethodChannel('amap_location_gp');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static Future<String> get getLocation async {
    final String location = await _channel.invokeMethod('getLocation');
    return location;
  }
}
