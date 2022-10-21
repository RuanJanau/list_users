import 'package:flutter/material.dart';
import 'package:list_users/src/components/user_tile.dart';
import 'package:list_users/src/data/dummy_user.dart';

import '../models/user.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuários'),
      ),
      body: ListView.builder(
        itemCount: users.values.length,
        itemBuilder: (BuildContext context, int index) => UserTile(
          users.values.elementAt(index),
        ),
      ),
    );
  }

  Map<String, User> get users => {...dummyUsers};
}
