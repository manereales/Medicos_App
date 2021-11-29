import 'package:flutter/material.dart';
import 'package:medicos_app/page/Vista_detalle.dart';

class ObjectSquares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 65)),
        Container(
          child: Image.asset(
            'assets/img/splash.jpg',
            width: 150,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        FlatButton(
            onPressed: () {
              //print('I got clicked');
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Detalle(),
              ));
            },
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                  height: 10,
                ),
                Text("Dr.Example"),
                SizedBox(
                  width: 20.0,
                  height: 10,
                ),
                Text("ubicacion"),
              ],
            )),
      ],
    );
  }
}
