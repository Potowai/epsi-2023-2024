import 'package:flutter/cupertino.dart';

import 'articles.dart';

class CartProvider with ChangeNotifier {
  final List<Articles> _items = [];

  List<Articles> get items => _items;

  void add(Articles item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(Articles item) {
    _items.remove(item);
    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}
