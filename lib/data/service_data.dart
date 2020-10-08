import 'package:cloud_firestore/cloud_firestore.dart';

class ServiceData {

  String Categoria;
  String Subcategoria;

  String id;
  String title;
  String descricao;
  List horario;


  ServiceData.fromDocument(DocumentSnapshot snapshot){
    id = snapshot.documentID;
    title = snapshot.data["title"];
    descricao = snapshot.data["descricao"];
    horario = snapshot.data["horario"];

  }



}