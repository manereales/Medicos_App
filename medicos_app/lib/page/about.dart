import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("About us"),
          centerTitle: true,
        ),
        body: ListView
        (
          children: <Widget>
          [
            Container
            (
              height: 773,
              decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Color.fromARGB(240, 137, 30, 53), Colors.white30])),
              child: Column
              (
                
                children: <Widget>
                [
                  Image.asset(
                  "assets/img/brand.png",
                  height: 395.0,
                  width: 395.0,
                  fit: BoxFit.contain,
                  ),
                  Text("Somos un grupo de estudiantes de la Universidad tecnologica de El Salvador de la materia Técnicas de calidad de software, ciclo 02-2021", style: TextStyle(fontSize: 25)),
                  SizedBox(height: 20,),
                  info()
                ],
              ),
            )
          ],
        )
      );
    }
    
    
  Widget info()
  {
    return Stack
    (
      children: <Widget>
      [
        Container
        (
          
          child: GridView.count
          (
            shrinkWrap: true,
            crossAxisCount: 2,
            children: <Widget>
            [
              Container
              (
                child: Column
                (
                  children: <Widget> 
                  [
                    
                    Text("Nombres:",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Text("Martínez Figueroa, Boris Alexander", style: TextStyle(fontSize: 15),),
                    SizedBox(height: 15,),
                    Text("Maravilla Prieto, Carlos Manuel",style: TextStyle(fontSize: 15)),
                    SizedBox(height: 15,),
                    Text("Palacios Martínez, Edwin Ricardo",style: TextStyle(fontSize: 15)),
                    SizedBox(height: 15,),
                    Text("Reales Henríquez, Manuel Alberto",style: TextStyle(fontSize: 15)),
                  ],
                )
              ),
              Container
              (
                child: Column
                (
                  children: <Widget> 
                  [
                    Text("Carne:",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Text("25-5308-2016",style: TextStyle(fontSize: 15)),
                    SizedBox(height: 15,),
                    Text("25-4398-2016",style: TextStyle(fontSize: 15)),
                    SizedBox(height: 15,),
                    Text("25-1081-2016",style: TextStyle(fontSize: 15)),
                    SizedBox(height: 15,),
                    Text("25-3000-2016",style: TextStyle(fontSize: 15)),
                  ],
                )
              ),
              
              
            ],
          ),
         
        ),
      ],
    );
  }
  
}