import 'package:acha_aqui/data/bussines_data.dart';
import 'package:acha_aqui/data/service_data.dart';
import 'package:acha_aqui/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BussinesModel extends Model {

  UserModel user;


  BussinesModel(this.user);
  
  void addBussines(BussinesData bussinesData){
    Firestore.instance.collection("Usuarios").document(user.firebaseUser.uid).collection("Bussines").add(bussinesData.toMap()).
    then((doc){
      bussinesData.id = doc.documentID;
    });
    notifyListeners();

  }

  void modifyBussines(){

  }






}