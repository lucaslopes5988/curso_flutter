import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../model/resposta.dart';

class RespostaView extends StatelessWidget{

final String texto;
final void Function() quandoSelecionado;

 const RespostaView(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
   return  Container(
    width: double.infinity,
     child: ElevatedButton(  
      child: Text(texto),
      onPressed: (){},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        textStyle: const TextStyle(
          color: Colors.red,
        )
      ),
      ),
   );
  
  }
}