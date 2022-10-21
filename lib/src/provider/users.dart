import 'package:flutter/material.dart';

import '../data/dummy_user.dart';
import '../models/user.dart';

class Users with ChangeNotifier {
  Map<String, User> get _items => {...dummyUsers};

  List<User> get all => [..._items.values];

  int get count => _items.length;
}
