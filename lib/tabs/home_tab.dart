import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget{

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
                title: Image.asset("assets/icon/name.png",
                  width: 190,
                  height: 23,
                ),
                centerTitle: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}







