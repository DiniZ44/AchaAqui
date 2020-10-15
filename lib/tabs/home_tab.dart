import 'package:acha_aqui/screens/create_bussines_screen.dart';
import 'package:acha_aqui/tabs/business_tab.dart';
import 'package:acha_aqui/tiles/category_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Form(
        child: ListView(
          padding: EdgeInsets.fromLTRB(32, 66, 32, 16),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 366, bottom: 10),
            ),
            SizedBox(height: 45.0,
              child: RaisedButton(
                child: Text("Cadastrar Empresa",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                textColor: Colors.black,
                color: Colors.amber,
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => CreateBussinessScreen())
                  );
                },
              ),
            ),
          ],
        ),
      )
    );
  }
}









