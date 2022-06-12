import 'package:fluket/cart.dart';
import 'package:flutter/material.dart';
import 'package:fluket/pub.dart';

class shope extends StatefulWidget {
  @override
  _shopStatee createState() => _shopStatee();
}

class _shopStatee extends State<shope> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario'),
        ),

      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget>[
              crearInput1(),
              crearInput2(),
              crearInput3(),
              crearInput4(),

              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => post(),
                                      ));
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orangeAccent,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 10),
                                ),
                                child: const Text(
                                  "Publicar",
                                  textAlign: TextAlign.center,
                                )
                              ),
              
            ],
          ),
        ),
      )

    );
  }

  Widget crearInput1(){
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: '¿Que es lo que vendes?' ,
          hintText: '¿Que es?'
          ),
        ),
    );
  }

  Widget crearInput2(){
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Descripcion' ,
          hintText: 'breve descripcion'
          ),
        ),
    );
  }

  Widget crearInput3(){
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: '¿Estado del producto?' ,
          hintText: 'estado'
          ),
        ),
    );
  }

  Widget crearInput4(){
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Precio' ,
          hintText: 'precio'
          ),
        ),
    );
  }

}