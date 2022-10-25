import 'dart:math';

import 'package:flutter/material.dart';

import '../data/dummy_user.dart';
import '../models/user.dart';

class Users with ChangeNotifier {
  Map<String, User> get _items => {...dummyUsers};

  List<User> get all => [..._items.values];

  int get count => _items.length;

  User byIndex(int i) => all.elementAt(i);

  void put(User user) {
    if (_items.containsKey(user.id)) {
      _items.update(user.id, (value) => user);
    } else {
      var id = Random().nextDouble().toString();
      _items.putIfAbsent('100', () => user.copyWith(id: id));
    }
    notifyListeners();
  }

  void remove(User user) {
    _items.remove(user.id);
    notifyListeners();
  }
}
