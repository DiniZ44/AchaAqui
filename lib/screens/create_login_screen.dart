import 'package:acha_aqui/models/user_model.dart';
import 'package:acha_aqui/screens/home_screen.dart';
import 'package:acha_aqui/tabs/profile_tab.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class CreateLoginScreen extends StatefulWidget {
  @override
  _CreateLoginScreenState createState() => _CreateLoginScreenState();
}

class _CreateLoginScreenState extends State<CreateLoginScreen> {

  final _nameC = TextEditingController();
  final _contatoC = TextEditingController();
  final _emailC = TextEditingController();
  final _senhaC = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      backgroundColor: Colors.grey,

      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text("Criar Conta"),
            centerTitle: true,
      ),
      body: ScopedModelDescendant<UserModel>(
          builder: (context, child, model){
            if(model.isLoading)
              return Center(child: CircularProgressIndicator(),);
            return Form(
              key: _formKey,
              child: ListView(
                padding: EdgeInsets.fromLTRB(32, 36, 32, 16),
                children: <Widget>[
                  TextFormField(
                    controller: _nameC,
                    decoration: InputDecoration(
                      hintText: "Nome",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(36)
                      ),
                    ),
                    validator: (text){
                      if(text.isEmpty ) return "Nome inválido";
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 10),
                  ),
                  TextFormField(
                    controller: _contatoC,
                    decoration: InputDecoration(
                      hintText: "Contato",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(36)
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (text){
                      if(text.isEmpty ) return "Contato inválido";
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 10),
                  ),
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
                      if(text.isEmpty || text.length < 6) return "Senha inválido";
                    },
                  ),
                  SizedBox(height: 16.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 10),
                  ),
                  SizedBox(height: 55.0,
                    child: RaisedButton(
                      child: Text("Cadastrar",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      textColor: Colors.white,
                      color: Colors.black26,
                      onPressed: (){
                        if(_formKey.currentState.validate()){

                          Map<String, dynamic> _userData = {
                            "nome": _nameC.text,
                            "contato": _contatoC.text,
                            "email": _emailC.text
                          };

                          model.signUp(
                              userData: _userData,
                              pass: _senhaC.text,
                              onSucess: onSucess,
                              onFailed: onFailed
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            );
          })
    );
  }

  void onSucess(){
    _scaffold.currentState.showSnackBar(
        SnackBar(content: Text("Usuário criado com sucesso"),
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
        SnackBar(content: Text("Erro ao criar usuário ",),
          backgroundColor: Colors.black26,
          duration: Duration(seconds: 2),
        ));

  }
}
