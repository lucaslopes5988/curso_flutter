import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_perguntas/model/questao.dart';
import '../model/resposta.dart';
import 'questao_view.dart';
import 'resposta_view.dart';
import '../model/questionario.dart';

class QuestionarioView extends StatelessWidget {

  var responder;
  late final Questionario questionario;

 // const QuestionarioView({super.key, required this.questionario});
   var perguntaSelecionada = 0;
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

  QuestionarioView(Questionario questionario, {super.key});

   bool get temPerguntaSelecionada {  
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
     List<Map<String, Object>> respostas = temPerguntaSelecionada ?
    perguntas[perguntaSelecionada].cast()
    ['respostas'] as List<Map<String, Object>>
    : [];
    return  Column(
          children: <Widget>[
            QuestaoView(Questao(texto: perguntas[perguntaSelecionada]['texto'].toString())),
            ...respostas
              .map((resp) => Resposta(resp['texto'] as String, responder))
            .toList(),
            ],
           );
  }
}