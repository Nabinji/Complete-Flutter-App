import 'package:flutter/material.dart';

class QuantityProvider extends ChangeNotifier {
  int _currentNumber = 1;
  List<double> _baseIngredientAmounts = [];
  int get currentNumber => _currentNumber;
  // Set initial ingredient amounts
  void setBaseIngredientAmounts(List<double> amounts) {
    _baseIngredientAmounts = amounts;
    notifyListeners();
  }

  // Update ingredient amounts based on the quantity
  List<String> get updateIngredientAmounts {
    return _baseIngredientAmounts
        .map<String>((amount) => (amount * _currentNumber).toStringAsFixed(1))
        .toList();
  }

  // increase servings
  void increaseQuantity() {
    _currentNumber++;
    notifyListeners();
  }

  // decrease servings
  void decreaseQuanity() {
    if (_currentNumber > 1) {
      _currentNumber--;
      notifyListeners();
    }
  }
}
