import 'package:acha_aqui/data/service_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ServicesTile extends StatelessWidget {

  final DocumentSnapshot snapshot;

  ServicesTile(this.snapshot);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(snapshot.data["title"]),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: (){
      },
    );
  }
}