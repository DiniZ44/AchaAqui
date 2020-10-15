import 'package:acha_aqui/screens/create_bussines_screen.dart';
import 'package:flutter/material.dart';

class BusinessTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: ListView(
        padding: EdgeInsets.fromLTRB(42, 66, 42, 16),
        children: <Widget>[
          SizedBox(height: 35.0,
            child: RaisedButton(
              child:
              Text("Cadastrar Négocio",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              textColor: Colors.white,
              color: Colors.black12,
              onPressed: (){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => CreateBussinessScreen())
                );
              },
            ),
          ),
          SizedBox(height: 25.0,
          ),
          SizedBox(height: 35.0,
            child: RaisedButton(
              child:
              Text("Plano Premium",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              textColor: Colors.black,
              color: Colors.amber,
              onPressed: (){},
            ),
          ),
        ],
      ),
    );
  }
}


