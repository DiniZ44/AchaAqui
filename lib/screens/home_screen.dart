import 'package:acha_aqui/tabs/adm_tab.dart';
import 'package:acha_aqui/tabs/business_tab.dart';
import 'package:acha_aqui/tabs/category_tab.dart';
import 'package:acha_aqui/tabs/city_tab.dart';
import 'package:acha_aqui/tabs/home_tab.dart';
import 'package:acha_aqui/tabs/profile_tab.dart';
import 'package:acha_aqui/tabs/recents_tab.dart';
import 'package:acha_aqui/tiles/category_tile.dart';
import 'package:acha_aqui/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[

        Scaffold(
          appBar: AppBar(
              title: Image.asset("assets/icon/name.png",
                width: 190,
                height: 23,
              ),
            backgroundColor: Colors.black26,
            centerTitle: true,
          ),
        body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),

        Scaffold(
          appBar: AppBar(
            title: Text('Categorias'),
            backgroundColor: Colors.black26,
            centerTitle: true,
          ),
          body: CategoryTab(),
          drawer: CustomDrawer(_pageController),
        ),

        Scaffold(
          appBar: AppBar(
          title: Text('Escolha a cidade'),
          backgroundColor: Colors.black26,
          centerTitle: true,
        ),
          body: CityTab(),
          drawer: CustomDrawer(_pageController),
        ),


        Scaffold(
          appBar: AppBar(
            title: Text('Gerenciar Négocio'),
            backgroundColor: Colors.black26,
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: BusinessTab(),
        ),


        Scaffold(
          appBar: AppBar(
            title: Text('Perfil do Usuário'),
            backgroundColor: Colors.black26,
            centerTitle: true,
            actions: <Widget>[
                FlatButton(
                  child: Text("Criar Conta",style: TextStyle(fontSize: 11.0),),
                  textColor: Colors.white,
                  onPressed: (){},
          ),
          ],
          ),
          drawer: CustomDrawer(_pageController),
          body: ProfileTab(),
        ),


        Scaffold(
          appBar: AppBar(
            title: Text('Recentes / Favoritos'),
            backgroundColor: Colors.black26,
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: RecentsTab(),
        ),


        Scaffold(
          appBar: AppBar(
            title: Text('Contatar os adminstradores'),
            backgroundColor: Colors.black26,
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: AdmTab(),
        ),
      ],
    );
  }
}

