import 'package:flutter/material.dart';

class CreateLoginScreen extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text("Criar Conta"),
            centerTitle: true,
      ),
      body:
        Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.fromLTRB(32, 36, 32, 16),
            children: <Widget>[
              TextFormField(
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
        ),
    );
  }
}
