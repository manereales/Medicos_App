import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medicos_app/page/homepage.dart';
import 'package:medicos_app/page/listado.dart';
import 'package:medicos_app/page/login.dart';
import 'package:medicos_app/widget/button_widget.dart';
import 'package:medicos_app/widget/navigation_drawer_widget.dart';

import 'controller.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(AppMedic());
}

class AppMedic extends StatelessWidget {
  static final String title = 'Navigation Drawer';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: login(),
        //Homepage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void initState() {
    super.initState();
    //InsertarUsuario();
    //getUsuarios();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        // endDrawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(AppMedic.title),
        ),
      );
}
