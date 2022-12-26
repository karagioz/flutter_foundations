import 'dart:math';

import 'package:flutter/foundation.dart';

class RandomizerChangeNotifier extends ChangeNotifier {
  final _randomGenerator = Random();

  int? _generatorNumber;
  int? get generatedNumber => _generatorNumber;

  int min = 0, max = 0;

  void generateRandomNumber() {
    _generatorNumber = min + _randomGenerator.nextInt(max + 1 - min);
    notifyListeners();
  }
}
