import 'dart:async';

import 'package:flutter/material.dart';

class Debounce {
  final int milliseconds;
  Timer? _timer;

  Debounce({required this.milliseconds});

  void call(VoidCallback action) {
    // Cancel any existing timer
    _timer?.cancel();

    // Start a new timer
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
