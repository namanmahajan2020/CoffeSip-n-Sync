import 'package:coffee_sipsync/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: "Long Black",
      price: '4.10',
      imagePath: "lib/images/black.png",
    ),
    Coffee(name: "Latte", price: '4.20', imagePath: "lib/images/latte.png"),
    Coffee(
      name: "Expresso",
      price: '3.51',
      imagePath: "lib/images/espresso.png",
    ),
    Coffee(
      name: "Iced Coffee",
      price: '4.40',
      imagePath: "lib/images/iced_coffee.png",
    ),
  ];
  List<Coffee> _userCart = [];

  List<Coffee> get coffeeShop => _shop;

  List<Coffee> get useCart => _userCart;

  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
