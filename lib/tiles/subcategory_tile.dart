import 'package:acha_aqui/screens/services_scren.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SubCategoryTile extends StatelessWidget {

  final DocumentSnapshot snapshot;

  SubCategoryTile(this.snapshot);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(snapshot.data["title"]),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: (){
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ServicesScreen(snapshot))
        );
      },
    );
  }
}
