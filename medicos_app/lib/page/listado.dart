import 'package:flutter/material.dart';
import 'package:medicos_app/widget/navigation_drawer_widget.dart';
import 'package:medicos_app/widget/object_squares.dart';

class listado extends StatelessWidget {
  const listado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("Medicos App"),
      ),
      body: Column(
        children: <Widget>[cuerpoapp()],
      ),
    );
  }

  Widget cuerpoapp() {
    return Container(
      child: Column(
        children: <Widget>[
          //SafeArea(child: NavbarSuperior()),
          SizedBox(
            height: 30,
          ),
          Text(
            "Listado",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          campoBuscar(),
          SizedBox(
            height: 20,
          ),
          listadoV("tituloMovie", ObjectSquares(), 7)
        ],
      ),
    );
  }

  Widget campoBuscar() {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextField(
        decoration: InputDecoration(suffixIcon: Icon(Icons.search)),
      ),
    );
  }

  Widget listadoV(String tituloMovie, Widget objeto, int cantidad) {
    return Column(
      children: [
        Container(
          height: 560,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: cantidad,
            itemBuilder: (context, index) {
              return objeto;
            },
          ),
        ),
      ],
    );
  }
}
