import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../model/resultado.dart';

class ResultadoView extends StatelessWidget{
  const ResultadoView(String s, {super.key});

  
  @override
  Widget build(BuildContext context) {
    
    return const Center(
            child: Text(
              'Parabéns!!!!!!',
               style: TextStyle(fontSize: 28),
            ),
          );
  }


}