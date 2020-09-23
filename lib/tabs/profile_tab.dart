import 'package:acha_aqui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: variasStacks(),
    );
  }
}

 Widget variasStacks(){
  return Stack(
    children: <Widget>[
      Form(
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
