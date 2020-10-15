import 'package:acha_aqui/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'home_screen.dart';

class CreateBussinessScreen extends StatefulWidget {
  @override
  _CreateBussinessScreenState createState() => _CreateBussinessScreenState();
}

class _CreateBussinessScreenState extends State<CreateBussinessScreen> {

  final _titleC = TextEditingController();
  final _descricaoC = TextEditingController();
  final _localC = TextEditingController();
  final _contatoC = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffold,
        backgroundColor: Colors.grey,
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
                      controller: _titleC,
                      decoration: InputDecoration(
                        hintText: "Nome de Empresa",
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
                      controller: _descricaoC,
                      decoration: InputDecoration(
                        hintText: "Descrição",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(36)
                        ),
                      ),
                      validator: (text){
                        if(text.isEmpty ) return "Descrição inválida";
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 10),
                    ),
                    TextFormField(
                      controller: _localC,
                      decoration: InputDecoration(
                        hintText: "Local da Empresa",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(36)
                        ),
                      ),
                      validator: (text){
                        if(text.isEmpty ) return "Local inválido";
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
                          )
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (text){
                        if(text.isEmpty || text.length < 6) return "Contato inválido";
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
        SnackBar(content: Text("Empresa cadastrada com sucesso"),
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
        SnackBar(content: Text("Erro ao cadastrar empresa ",),
          backgroundColor: Colors.black26,
          duration: Duration(seconds: 2),
        ));

  }
}
