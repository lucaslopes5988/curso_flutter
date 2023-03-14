import 'package:flutter/material.dart';
import 'package:projeto_perguntas/presentation/resultado_view.dart';
import 'model/questionario.dart';
import 'presentation/questionario_view.dart';
import 'model/resultado.dart';
main() => runApp(PerguntaApp());


class PerguntaAppState extends State<PerguntaApp> {

  int perguntaSelecionada = 0;

  final  perguntas = [
      {
        'texto' : 'Qual é sua cor favorita ?',
        'respostas': [
          {'texto': 'Preto', 'nota':10},
          {'texto': 'Vermelho', 'nota':5},
          {'texto': 'Verde', 'nota':3},
          {'texto': 'Branco', 'nota':1},
          ],
      },
      {
        'texto': 'Qual é seu animal favorito ?',
        'respostas': [
          {'texto': 'Cachorro', 'nota':10 },
          {'texto': 'Gato', 'nota':5},
          {'texto': 'Leão', 'nota':3},
          {'texto': 'Elefante', 'nota':1},
          ],
      },
      {
        'texto': 'Qual é seu instrutor favorito ?',
        'respostas': [
          {'texto': 'Lucas', 'nota': 10},
          {'texto': 'João', 'nota': 5},
          {'texto': 'Léo', 'nota': 3},
          {'texto': 'Pedro', 'nota': 1},
          ],
      }
    ];

  void responder(){
    if(temPerguntaSelecionada){
    setState(() {
      perguntaSelecionada++;
    });
    print( perguntaSelecionada);
  }
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context){
    

   
   // List<Widget> widgets= respostas.map((t) => Resposta(t, responder)).toList();
    
    /*
    for(String textoResp in respostas){
        widgets.add(Resposta(textoResp, responder));
    }*/


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada 
           ? QuestionarioView(Questionario(perguntas:perguntas, perguntaSelecionada:perguntaSelecionada, responder: responder, quandoResponder: () {  }))
           : ResultadoView(Resultado('textoresult') as String),
        ),
      );
    }   
  }


class PerguntaApp extends StatefulWidget{
  const PerguntaApp({super.key});


  @override
  PerguntaAppState createState(){
    return PerguntaAppState();
  }
}