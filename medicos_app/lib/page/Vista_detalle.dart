import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:medicos_app/widget/navigation_drawer_widget.dart';

class Detalle extends StatelessWidget {
  const Detalle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("Medicos App"),
      ),
      //body: Column(
      //children: <Widget>[pricipal()],
      body: vista(),
    );
  }

  Widget vista() {
    return Column(
      children: <Widget>[
        encabezado(),
        titulo(),
        SizedBox(
          height: 30,
        ),
        parrafo(),
        SizedBox(
          height: 30,
        ),
        ubicacion(),
      ],
    );
  }

  Widget encabezado() {
    return Stack(
      children: <Widget>[
        Image.network(
          "https://tec.mx/sites/default/files/inline-images/doctora-juguetes-cecilia-britton-tecsalud-consultorio.jpg",
          height: 400.0,
          width: 1950.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.black45,
                Colors.black,
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget titulo() {
    return Container(
        color: Colors.green,
        width: 1950,
        child: Column(children: <Widget>[
          Text(
            "Dra. Maria Lopez",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 40),
          )
        ]));
  }

  Widget parrafo() {
    return Padding(
        // color: Colors.green,
        //width: 1950,
        padding: EdgeInsets.all(25),
        child: Column(children: <Widget>[
          Text(
            "Graduada de la universidad de El Salvador con más de 15 años de experiencia en el área médica, especialista en Cardiología ",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 25),
          )
        ]));
  }

  Widget ubicacion() {
    return Container(
        //color: Colors.green,
        //width: 1950,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
          Text(
            "Ubicación",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/img/mapa.jpg",
            width: 300,
            alignment: Alignment.bottomLeft,
          )
        ]));
  }
}
