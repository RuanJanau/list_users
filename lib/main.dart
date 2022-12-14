import 'package:flutter/material.dart';
import 'package:list_users/src/provider/users.dart';
import 'package:list_users/src/routes/app_routes.dart';
import 'package:list_users/src/views/user_form.dart';
import 'package:list_users/src/views/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Users()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const UserList(),
          routes: {
            AppRoutes.USER_FORM: (_) => UserForm(),
          }),
    );
  }
}
