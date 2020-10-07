import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomDrawer extends StatelessWidget{

  final PageController _pageControler;
  CustomDrawer(this._pageControler);

@override
Widget build(BuildContext context) {

  Widget _biuldDrawBack() => Container(

    decoration: BoxDecoration(
      color: Colors.black26,
    ),
  );


    return Drawer(
      child: Stack(
        children: <Widget>[
          _biuldDrawBack(

          ),
          ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 50, bottom: 30),
                        child: Image.asset("assets/icon/AchaAquiN.png",
                        width: 250,
                        height: 160,
                        fit: BoxFit.contain,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.home,
                          size: 27,
                        ),
                        title: Text("Início",
                          style: TextStyle(fontSize: 15),),
                        onTap: (){
                          Navigator.of(context).pop();
                          _pageControler.jumpToPage(0);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.shopping_basket,
                          size: 27,
                        ),
                        title: Text("Serviços",
                          style: TextStyle(fontSize: 15),),
                        onTap: (){
                          Navigator.of(context).pop();
                          _pageControler.jumpToPage(1);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.map,
                        size: 27,
                        ),
                        title: Text("Trocar cidade",
                          style: TextStyle(fontSize: 15),),
                        onTap: (){
                          Navigator.of(context).pop();
                          _pageControler.jumpToPage(2);

                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.work,
                          size: 27,),
                        title: Text("Negócio",
                          style: TextStyle(fontSize: 15),),
                        onTap: (){
                          Navigator.of(context).pop();
                          _pageControler.jumpToPage(3);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.person,
                          size: 27,),
                        title: Text("Perfil",
                          style: TextStyle(fontSize: 15),),
                        onTap: (){
                          Navigator.of(context).pop();
                          _pageControler.jumpToPage(4);

                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.access_time,
                          size: 27,
                        ),
                        title: Text("Favoritos / Recentes",
                          style: TextStyle(fontSize: 15),),
                        onTap: (){
                          Navigator.of(context).pop();
                          _pageControler.jumpToPage(5);

                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.email,
                          size: 27,),
                        title: Text("Contatar adminstadores",
                        style: TextStyle(fontSize: 15),),
                        onTap: (){
                          Navigator.of(context).pop();
                          _pageControler.jumpToPage(6);

                        },
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
