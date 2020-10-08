import 'package:acha_aqui/models/user_model.dart';
import 'package:acha_aqui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ProfileTab extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: ScopedModelDescendant<UserModel>(
        builder: (context, child, model){
          if(model.isLoading)
            return Center(child: CircularProgressIndicator(),);
          return Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.fromLTRB(32, 66, 32, 16),
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "E-mail",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(36)
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (text){
                    if(text.isEmpty || !text.contains("@")) return "E-mail inválido";
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Senha",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(36)
                      )
                  ),
                  obscureText: true,
                  validator: (text){
                    if(text.isEmpty || text.length > 3) return "Senha inválido";
                  },
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: (){},
                    child: Text("Esqueci minha senha", textAlign: TextAlign.right,
                    ),
                    padding: EdgeInsets.zero,
                  ),
                ),
                SizedBox(height: 16.0,
                ),
                SizedBox(height: 55.0,
                  child: RaisedButton(
                    child: Text("Entrar",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    textColor: Colors.white,
                    color: Colors.black26,
                    onPressed: (){
                      if(_formKey.currentState.validate()){
                      }

                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
