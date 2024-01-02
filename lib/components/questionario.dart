import 'package:flutter/material.dart';
import 'package:flutter_create_word/components/questao.dart';
import 'package:flutter_create_word/components/resposta.dart';
class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int indicePergunta;
  final void Function(int) resposta;

  const Questionario({
    required this.perguntas,
    required this.indicePergunta,
    required this.resposta,
    });

  bool get finalDasPerguntas{
    return indicePergunta < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = finalDasPerguntas? perguntas[indicePergunta]['resposta']  as List<Map<String, Object>>:[];
    return Column(
            children: [
              Questao(perguntas[indicePergunta]['texto'].toString()),
              ...respostas.map((resp) { return (RespostaComp(resp["texto"] as String, 
                () => resposta(int.parse(resp['pontuacao'].toString())),
              )
              );}).toList(),
            ],
    );
  }
}