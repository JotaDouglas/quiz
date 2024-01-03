// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacaoFinal;
  final void Function() reiniciarQuestionario;

  const Resultado( this.pontuacaoFinal, this.reiniciarQuestionario,{super.key});

  String get mostrarResultado {
    if (pontuacaoFinal < 5) {
      return "Parabéns até que foi bem!";
    } else if (pontuacaoFinal > 10) {
      return "Parabéns você foi sensacional!";
    } else {
      return "Parabéns sua pontuação foi intermediaria!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            mostrarResultado,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "$pontuacaoFinal Pontos",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(onPressed: reiniciarQuestionario, child: Text("Reiniciar"))
      ],
    );
  }
}
