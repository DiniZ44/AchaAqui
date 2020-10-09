import 'package:acha_aqui/models/user_model.dart';
import 'package:acha_aqui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {

  final _formKey = GlobalKey<FormState>();
  final _emailC = TextEditingController();
  final _senhaC = TextEditingController();
  final _scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
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
                  controller: _emailC,
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
                  controller: _senhaC,
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

                      model.signIn(
                          email: _emailC.text,
                          pass: _senhaC.text,
                          onSucess: onSucess,
                          onFailed: onFailed
                      );
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

  void onSucess(){
    _scaffold.currentState.showSnackBar(
        SnackBar(content: Text("Usuário Logado com sucesso"),
          backgroundColor: Colors.black26,
          duration: Duration(seconds: 2),
        ));
    Future.delayed(Duration(seconds: 2)).then((_){
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => HomeScreen()));
    });

  }

  void onFailed(){
    _scaffold.currentState.showSnackBar(
        SnackBar(content: Text("Erro ao realizar login! Verifique seu e-mail ou senha"),
          backgroundColor: Colors.black26,
          duration: Duration(seconds: 2),
        ));

  }
}
