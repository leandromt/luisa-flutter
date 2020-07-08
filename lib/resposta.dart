import 'package:flutter/material.dart';

class Respota extends StatelessWidget {
  final String texto;
  final String img;
  final void Function() quandoSelecionado;

  Respota(this.texto, this.img, this.quandoSelecionado);

  String get imgUrl {
    return 'assets/images/' + img + '.png';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Column(
          children: <Widget>[Image.asset(imgUrl)],
        ),
        padding: EdgeInsets.all(30),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
