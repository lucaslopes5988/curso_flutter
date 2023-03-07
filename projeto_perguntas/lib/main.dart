import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());


class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder(){
    setState(() {
      perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context){
    final  perguntas = [
      {
        'texto' : 'Qual é sua cor favorita ?',
        'respostas': ['Preto','Vermelho','Verde','Branco'],
      },
      {
        'texto': 'Qual é seu animal favorito ?',
        'respostas': ['Cachorro','Gato','Leão','Elefante'],
      },
      {
        'texto': 'Qual é seu instrutor favorito ?',
        'respostas': ['Maria','João','Léo','Pedro'],
      }
    ];

    List<String> respostas = perguntas[perguntaSelecionada].cast()
    ['Respostas'];
    List<Widget> widgets= respostas.map((t) => Resposta(t, responder)).toList();
    
    /*
    for(String textoResp in respostas){
        widgets.add(Resposta(textoResp, responder));
    }*/


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[perguntaSelecionada]['texto'].toString()),
            ...respostas.map((t) => Resposta(t, responder)).toList(),
            ],
          ),
        ),
      );
    }   
  }

class PerguntaApp extends StatefulWidget{

  PerguntaAppState createState(){
    return PerguntaAppState();
  }
}