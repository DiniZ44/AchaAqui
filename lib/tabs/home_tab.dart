import 'package:acha_aqui/tiles/category_tile.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: Firestore.instance.collection("Categoria").getDocuments(),
      builder: (context, snapshot){
        if(!snapshot.hasData)
          return Center(child: CircularProgressIndicator(),);
      else{
        return ListView(
          children: snapshot.data.documents.map(
              (doc){
                return CategoryTile(doc);
              }
          ).toList(),
        );
        }
        },
    );
  }
}









