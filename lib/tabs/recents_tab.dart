import 'package:flutter/material.dart';

class RecentsTab extends StatelessWidget {

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
                title: Text("Recentes / Favoritos",
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
