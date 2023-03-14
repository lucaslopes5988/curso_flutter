import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
   return  SizedBox(
    width: double.infinity,
     child: ElevatedButton(  
      onPressed: quandoSelecionado,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        textStyle: const TextStyle(
          color: Colors.red,
        )
      ),  
      child: Text(texto),
      ),
   );
  
  }
}
