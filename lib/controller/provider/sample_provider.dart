import 'package:flutter/material.dart';

class Sample extends ChangeNotifier {
  int data = 1;
  void sample() {
    data = data + 1;
    notifyListeners();
  }
}
