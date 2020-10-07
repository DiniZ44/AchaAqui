import 'package:flutter/material.dart';
import 'package:acha_aqui/tiles/category_tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: Firestore.instance.collection("Categoria").getDocuments(),
      builder: (context, snapshot){
        if(!snapshot.hasData)
          return Center(child: CircularProgressIndicator(),);
        else{
          var dividirTiles = ListTile.divideTiles(
              tiles:snapshot.data.documents.map((doc){
                return CategoryTile(doc);}).toList(),
              color: Colors.black).toList();

          return ListView(
            padding: EdgeInsets.all(4.0),
            children: dividirTiles,
          );
        }
      },
    );
  }
}
