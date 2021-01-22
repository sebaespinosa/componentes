import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {
  
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemscorto()
      ),
    );
  }

  List<Widget> _crearItems() {

    List<Widget> lista = [];

    for (String opt in opciones){

      final tempWidget = ListTile(
        title: Text( opt),
      );

      lista..add(tempWidget)
           ..add(Divider(thickness: 5.0,));
    }

    return lista;

  }

  List<Widget> _crearItemscorto(){

    return opciones.map( (item) {

      return Column(
        children: <Widget>[
          ListTile(
            title: Text( item + '!'),
            subtitle: Text('sutitulo ' + item),
            leading: Icon(Icons.accessible),
            trailing: Icon(Icons.airplay_outlined),
          ),
          Divider(thickness: 5.0,)
        ],
      );
    }
    ).toList();

  }

}