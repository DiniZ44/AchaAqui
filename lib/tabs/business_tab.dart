import 'package:flutter/material.dart';

class BusinessTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Stacks(),
    );
  }
}
Widget Stacks(){
  return Stack(
    children: <Widget>[
      ListView(
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
              onPressed: (){},
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
              textColor: Colors.white,
              color: Colors.black12,
              onPressed: (){},
            ),
          ),
        ],
      ),
    ],
  );
}


