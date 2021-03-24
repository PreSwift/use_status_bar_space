
import 'dart:async';

import 'package:flutter/services.dart';

class UseStatusBarSpace {
  static const MethodChannel _channel =
      const MethodChannel('use_status_bar_space');

  static Future<void> use() async {
    return  await _channel.invokeMethod('use');
  }

  static Future<void> unUse() async {
    return  await _channel.invokeMethod('unUse');
  }

}
