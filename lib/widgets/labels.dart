import 'package:flutter/material.dart';

class Label extends StatelessWidget {

  final String ruta;
  final String titulo;
  final String subTitulo;

  const Label({
    Key key, 
    @required this.ruta, 
    @required this.titulo, 
    @required this.subTitulo
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(this.titulo, style: TextStyle(color: Colors.black54, fontSize: 15),),
          GestureDetector(
            child: Text(this.subTitulo, style: TextStyle(color: Colors.blue[600], fontSize: 18, fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.pushReplacementNamed(context, this.ruta);
            },
          ),

        ],
      ),
      
    );
  }
}