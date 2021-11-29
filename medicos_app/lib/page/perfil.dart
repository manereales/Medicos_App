import 'package:flutter/material.dart';
import 'package:medicos_app/widget/navigation_drawer_widget.dart';

import '../controller.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("Medicos App"),
      ),
      //body: Column(
      //children: <Widget>[pricipal()],
      body: pricipal(),
      //),
    );

    /*
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      height: 853,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/splash1.jpeg'), fit: BoxFit.cover)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          perfil(),
          SizedBox(
            height: 50,
          ),
          informacion(),
          SizedBox(
            height: 200,
          ),
          botonIngresar(),
        ],
      ),
    );
  }*/
  }

  Widget pricipal() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      height: 850,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/splash1.jpeg'), fit: BoxFit.cover)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          datos(),
          SizedBox(
            height: 50,
          ),
          informacion(),
          SizedBox(
            height: 400,
          ),
          botonIngresar(),
        ],
      ),
    );
  }

  Widget datos() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Mi Perfil",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, color: Colors.black),
          )
        ],
      ),
    );
  }

  Widget informacion() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              "Nombre:               María Alejandra ",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Apellidos:            Lopez Hernandez",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Fecha Nacimiento:          24/07/85",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Dirección:                     29 av. Norte",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
          ],
        ),
      ],
    );
  }

  Widget botonIngresar() {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Guardar",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
      style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 50, vertical: 20)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.greenAccent)))),
    );
  }
}
