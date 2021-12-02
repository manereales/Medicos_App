import 'package:flutter/material.dart';
import 'package:medicos_app/page/homepage.dart';
import 'package:medicos_app/page/listado.dart';
import 'package:medicos_app/page/Vista_detalle.dart';
import 'package:medicos_app/page/perfil.dart';

class login extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      //body: log()
      //appBar: AppBar(),
      //drawer: Drawer(),
      //body: Perfil(),
      body: log(context),
      //body: Detalle(),
    );
  }
}

Widget log(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
    height: 853,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/img/splash1.jpeg'), fit: BoxFit.cover)),
    child: Center(
        child: ListView(
      children: <Widget>[
        SizedBox(
          height: 550,
        ),
        camposUser(),
        SizedBox(
          height: 20,
        ),
        camposPass(),
        SizedBox(
          height: 20,
        ),
        botonIngresar(context),
      ],
    )),
  );
}

Widget camposUser() {
  return Container(
    child: TextField(
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.person),
          hintText: "Usuario",
          hintStyle: TextStyle(color: Colors.black),
          fillColor: Colors.greenAccent,
          filled: true),
    ),
  );
}

Widget camposPass() {
  return Container(
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.vpn_key),
          hintText: "Contraseña",
          hintStyle: TextStyle(color: Colors.black),
          fillColor: Colors.greenAccent,
          filled: true),
    ),
  );
}

Widget botonIngresar(BuildContext context) {
  return TextButton(
    onPressed: () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Homepage(),
      ));
    },
    child: Text(
      "Ingresar",
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
