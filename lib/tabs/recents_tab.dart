import 'package:acha_aqui/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class RecentsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: ScopedModelDescendant<UserModel>(
        builder: (context, child, model){
          return Form (
            child: ListView(
              padding: EdgeInsets.fromLTRB(32, 26, 32, 16),
              children: <Widget>[
                Text( "Olá ${(!model.isLoggedIn() ? "" : model.userData["nome"])}",
                  style: TextStyle(
                      fontSize: 19.0
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text( "Você não possui pesquisas favoritas ou recentes"
                ),
              ],
            ),
          );
          },
      )
      );
  }
}

