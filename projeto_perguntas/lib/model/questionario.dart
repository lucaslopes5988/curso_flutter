import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario{
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() quandoResponder;

  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder, required void Function() responder,
      });
}