import 'package:flutter/material.dart';
import 'package:medicos_app/widget/button_widget.dart';
import 'package:medicos_app/widget/navigation_drawer_widget.dart';

class Homepage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(),
      body: cabecera(),
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.asset('assets/img/splash.jpg', height: 853, fit: BoxFit.cover),
        Container(
          width: double.infinity,
          height: 853,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.white24, Colors.white38])),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 21),
          alignment: Alignment.topCenter,
          child: Text(
            "¡Bienvenido!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        ),
        /*
        SafeArea(
          child: NavbarSuperior(),
        ),*/
      ],
    );
  }
}
