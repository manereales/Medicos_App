import 'package:flutter/material.dart';
import 'package:medicos_app/paginas/login.dart';

void main() {
  runApp(AppMedic());
}

class AppMedic extends StatelessWidget {
  const AppMedic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}
