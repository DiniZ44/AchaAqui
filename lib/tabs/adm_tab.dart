
import 'package:acha_aqui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AdmTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
        body:      Form(
          child: ListView(
            padding: EdgeInsets.fromLTRB(32, 66, 32, 86),
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Reporte aqui, sujestões, problemas, duvidas e bugs. ",
                  hintMaxLines: 30,
                  helperMaxLines: 30,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(36)
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 10),
              ),
              SizedBox(height: 55.0,
                child: RaisedButton(
                  child: Text("Enviar",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  textColor: Colors.white,
                  color: Colors.black26,
                  onPressed: (){
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomeScreen())
                    );
                  },
                ),
              ),
            ],
          ),
        ),
    );
  }
}


