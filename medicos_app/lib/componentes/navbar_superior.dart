import 'package:flutter/material.dart';

class NavbarSuperior extends StatelessWidget {
  const NavbarSuperior({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row
    (
      
      children: <Widget>
      [
        Padding(padding: EdgeInsets.only(left: 5)),
        TextButton.icon
        (
          onPressed: (){}, 
          icon: Icon(Icons.menu, size: 50, color: Colors.black,), 
          label: Text(""),
          
          )
      ],
    );
  }
}