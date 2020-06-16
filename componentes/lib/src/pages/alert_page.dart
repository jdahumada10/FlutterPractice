import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Mostrar Alerta"),
          color: Colors.blue,
          onPressed: () => _mostrarAlert(context),
          textColor: Colors.white,
          shape: StadiumBorder()
        ),
      ),
    );
  }


  void _mostrarAlert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text("Título"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Este es el contenido de la caja de alerta"),
              FlutterLogo(size: 100)

            ],
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(), 
              child: Text("Cancelar")
            ),
            FlatButton(
              onPressed: () => Navigator.of(context).pop(), 
              child: Text("Ok")
            )
              
          ],
        );
      },
    );
  }


}

