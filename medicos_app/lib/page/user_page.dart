import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final String name;
  final String urlImage;
  final String email;

  const UserPage(
      {Key? key,
      required this.name,
      required this.urlImage,
      required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(name),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 773,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                  Colors.blue.shade50,
                  Colors.blue.shade100
                ])),
            child: Column(
              children: <Widget>[
                Image.network(
                  urlImage,
                  height: 500.0,
                  width: 500.0,
                  fit: BoxFit.contain,
                ),
                informacion(),
              ],
            ),
          )
        ],
      ));

  Widget informacion() {
    return Stack(
      children: <Widget>[
        Container(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                  child: Column(
                children: <Widget>[
                  Text("Nombre:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(
                    name,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Correo:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(email, style: TextStyle(fontSize: 20)),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Fecha de nacimiento:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("05/07/1989", style: TextStyle(fontSize: 20)),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Genero:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("Masculino", style: TextStyle(fontSize: 20)),
                ],
              )),
              Container(
                  child: Column(
                children: <Widget>[
                  Text("Direccion:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("123 FakeStreet boulevard",
                      style: TextStyle(fontSize: 20)),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Problemas medicos:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("Constante", style: TextStyle(fontSize: 20)),
                  Text("Hipertension", style: TextStyle(fontSize: 20)),
                  Text("Arterial", style: TextStyle(fontSize: 20)),
                ],
              )),
            ],
          ),
        ),
      ],
    );
  }
}
