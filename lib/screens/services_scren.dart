import 'package:acha_aqui/tiles/services_tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {

  final DocumentSnapshot snapshot;
  ServicesScreen(this.snapshot);

  @override
  Widget build(BuildContext context) {
    DocumentSnapshot _snap;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black26,
            title: Text(snapshot.data["title"]),
            centerTitle: true,
          ),
          body: FutureBuilder<QuerySnapshot>(
            future: Firestore.instance
              .collection("Categoria").document(snapshot.documentID)
              .collection("Subcategoria").document(snapshot.documentID)
              .collection("Servico").getDocuments(),
            builder: (context, snapshot){
              if(!snapshot.hasData)
                return Center(child: CircularProgressIndicator(),);
              else{
                var dividirTiles = ListTile.divideTiles(
                    tiles:snapshot.data.documents.map((doc){
                      return ServicesTile(doc);}).toList(),
                    color: Colors.black).toList();

                return ListView(
                  padding: EdgeInsets.all(4.0),
                  children: dividirTiles,
                );
              }
            },
          )
      ),
    );
  }
}
