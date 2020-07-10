import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  int _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual imagem abaixo a PrinLu tinha apenas 2 meses?',
      'respostas': [
        {'texto': '1 Mes', 'img': 'luisa1', 'pontuacao': 1},
        {'texto': '2 Meses', 'img': 'luisa2', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Qual imagem representa a Luísa batatinha?',
      'respostas': [
        {'texto': '2 Meses', 'img': 'luisa3', 'pontuacao': 0},
        {'texto': '3 Meses', 'img': 'luisa4', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Identifique a Luísa pimentinha nas imagens abaixo...',
      'respostas': [
        {'texto': '1 Mes', 'img': 'luisa5', 'pontuacao': 0},
        {'texto': '2 Meses', 'img': 'luisa6', 'pontuacao': 1},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
    print(_pontuacaoTotal);
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Teste seu amor pela Luísa'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
