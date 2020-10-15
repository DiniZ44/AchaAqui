import 'package:cloud_firestore/cloud_firestore.dart';

class BussinesData {

  String id;
  String title;
  String descricao;
  String local;
  String contato;

  BussinesData.fromDocument(DocumentSnapshot snapshot){
    id = snapshot.documentID;
    title = snapshot.data["title"];
    descricao = snapshot.data["descricao"];
    local = snapshot.data["local"];
    contato = snapshot.data["contato"];
  }



}