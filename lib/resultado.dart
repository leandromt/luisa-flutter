import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao > 2) {
      return 'Ama Infinito?!';
    } else if (pontuacao > 1) {
      return 'Você ama muito a Luísa!';
    } else {
      return 'Você ama a Luísa!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              fraseResultado,
              style: TextStyle(fontSize: 30),
            ),
          ),
          FlatButton(
            child: Text(
              'Reiniciar?',
              style: TextStyle(fontSize: 20),
            ),
            textColor: Colors.blue,
            onPressed: quandoReiniciarQuestionario,
          )
        ],
      ),
    );
  }
}
