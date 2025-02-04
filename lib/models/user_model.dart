import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends Model{

  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser firebaseUser;
  Map<String, dynamic> userData = Map();

  bool isLoading = false;


  @override
  void addListener(VoidCallback listener) {
    super.addListener(listener);
    _loadUser();
  }

  void signUp({@required Map<String, dynamic> userData,
              @required String pass,
              @required VoidCallback onSucess,
              @required VoidCallback onFailed}){
  isLoading = true;
  notifyListeners();

  _auth.createUserWithEmailAndPassword(
      email: userData["email"],
      password: pass
  ).then((user) async {
    firebaseUser = user;
    await _saveUserData(userData);
    onSucess();
    isLoading = false;
    notifyListeners();
  }).catchError((e){
    onFailed();
    isLoading = false;
    notifyListeners();
  });
  }
  void signIn({@required String email,
    @required String pass,
    @required VoidCallback onSucess,
    @required VoidCallback onFailed}) async{
    isLoading = true;
    notifyListeners();
    _auth.signInWithEmailAndPassword(
        email: email, 
        password: pass
    ).then((user) async {
      firebaseUser = user;
      await _loadUser();
      onSucess();
      isLoading = false;
      notifyListeners();
    }).catchError((e){
      onFailed();
      isLoading = false;
      notifyListeners();
    });

  }
  void recoverPass(String email){
    _auth.sendPasswordResetEmail(email: email);
  }

  void singOut() async {
    await _auth.signOut();

    userData= Map();
    firebaseUser = null;
    notifyListeners();
  }

  bool isLoggedIn(){
    return firebaseUser != null;
  }

  Future<Null> _saveUserData(Map<String, dynamic> userData) async{
    this.userData = userData;
    await Firestore.instance.collection("Usuarios").document(firebaseUser.uid).setData(userData);

  }

  Future<Null> _loadUser() async {
    if(firebaseUser == null)
      firebaseUser = await _auth.currentUser();
    if(firebaseUser != null){
      if(userData["nome"] == null){
        DocumentSnapshot docUser = await Firestore.instance.collection("Usuarios").document(firebaseUser.uid).get();
        userData = docUser.data;
      }
    }
    notifyListeners();
  }

}