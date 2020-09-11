import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {

@override
Widget build(BuildContext context) {
  Widget _biuldbodyBack() => Container(

    decoration: BoxDecoration(
      color: Colors.black26,
    ),
  );

  return Stack(
    children: <Widget>[
      _biuldbodyBack(),
      CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            snap: true,
            pinned: false,
            backgroundColor: Colors.black26,
            elevation: 0.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Perfil do Usuário",
              ),
              centerTitle: true,
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("Criar Conta",style: TextStyle(fontSize: 15.0),),
                textColor: Colors.white,
                onPressed: (){},
              ),
            ],
          ),
        ],
      ),
      Form(
        child: ListView(
          padding: EdgeInsets.fromLTRB(32, 126, 32, 16),
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  hintText: "E-mail",
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(36)
                ),
              ),
              keyboardType: TextInputType.emailAddress,
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
              onPressed: (){},
            ),
            ),
          ],
        ),
      ),
    ],
  );

}

}

