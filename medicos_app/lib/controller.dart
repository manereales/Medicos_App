library sql_server_socket;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

CollectionReference collectionReference =
    FirebaseFirestore.instance.collection("usuarios");

//**Select**
/*
Future getUsuarios() async {
  QuerySnapshot usuarios = await collectionReference.get();
  if (usuarios.docs.length != 0) {
    for (var documentos in usuarios.docs) {
      print(documentos.data());
      //user.add(documentos.data());
    }
  }
}*/
