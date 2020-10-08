import 'package:acha_aqui/models/user_model.dart';
import 'package:acha_aqui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: MaterialApp(
        title: 'AchaAqui',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryColor: Colors.black,
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}